class ClubController < ApplicationController
  def index
    @clubs = Club.all
    # @clubs = Club.page(params[:page])
    if user_signed_in?
      @current_check_club = ClubMember.find_by_user_id(current_user.id)
    end
  end
  
  def new_club
    if user_signed_in? && (current_user.authorization == '1' || current_user.authorization == '2')
      redirect_to '/club/index'
    end
  end
  
  def create_club # 클럽을 만드는 함수.
    # if user_signed_in? && current_user.authorization == '0' # 로그인이 되어있고 로그인 권한이 0(사이트관리자)이면 클럽을 만들수 있다.
      @club = Club.new
      @club.id = params[:club_id]
      @club.club_name = params[:club_name]
      @club.introduce = params[:introduce]
      uploader = ImguploaderUploader.new
      uploader.store!(params[:img])
      @club.img_url = uploader.url
      
      @club.save
      
      # 클럽을 만드는 동시에 옵션테이블에 클럽 아이디와 0(지원 비활성)을 넣는다.
      @option = Option.new
      @option.club_id = @club.id
      @option.apply_active = "0"
      
      @option.save
      
      redirect_to '/club/index'
    # else
    #   redirect_to '/club/index'
    # end
  end
  
  def delete_club # 클럽을 지우는 함수
    if user_signed_in? && current_user.authorization == '0' # 로그인이 되어있고 로그인 권한이 0이면 클럽을 지울수 있다.
      # 클럽 아이디를 찾는 동시에 그 클럽 아이디를 가지는 옵션 테이블을 찾는다.
      @club = Club.find(params[:club_id])
      @option = Option.find_by_club_id(@club)
      
      @option.destroy
      @club.destroy
      
      redirect_to '/club/index'
    else
      redirect_to '/club/index'
    end
  end
  
  
  def edit_club # 클럽을 불러오는 함수
    if user_signed_in?
      @club = Club.find(params[:club_id])
      # 현재 로그인된 아이디의 클럽을 불러오는 것.
      @check_club = ClubMember.find_by_user_id(current_user.id)
      if current_user.authorization == "2"
        redirect_to '/club/index'
      # 현재 로그인된 아이디가 단체 관리자이고 지금 보고있는 단체에 속해있지 않으면 수정할수 x
      elsif current_user.authorization == "1" && @check_club.club_id != @club.id
        redirect_to '/club/index'
      end
    end
  end
  
  def update_club # 클럽의 내용을 수정하는 함수
    @club = Club.find(params[:club_id])
    @club.id = params[:club_id]
    @club.club_name = params[:club_name]
    @club.introduce = params[:introduce]
    uploader = ImguploaderUploader.new
    uploader.store!(params[:img])
    @club.img_url = uploader.url

    @club.save
    
    redirect_to '/club/index'
  end
  
  def add_club_member # 클럽 멤버를 추가하는 함수
    if user_signed_in? && current_user.authorization != '2' &&
      # 클럽 멤버에 존재하지 않은 경우만 추가
      ClubMember.where(club_id: params[:club_id], user_id: params[:user_id]).exists? == false
      
      @member = ClubMember.new
      @member.user_id = params[:user_id]
      @member.club_id = params[:club_id]
      @member.save
    end
    redirect_to '/apply_content/index'
  end
  
  def delete_club_member # 클럽 멤버를 지우는 함수
    if user_signed_in?
      @member = ClubMember.find(params[:club_member_id])
      # 현재 로그인 한 유저가 서버관리자 이거나 지우는 유저의 클럽아이디가 로그인하고 있는 클럽아이디가 같고 단체 관리자이면 멤버를 삭제할수있다.
      if current_user.authorization == '0' || current_user.authorization == '1'
        # if ClubMember.find_by(:user_id => current_user.id, :use)
        @member.destroy
        
        redirect_to '/club/club_members'
      else
        redirect_to '/club/index'
      end
    end
  end
  
  def club_view
    @club = Club.find(params[:club_id])
    @members = ClubMember.all # 클럽 멤버들을 모두 불러옴
    
    # 현재 로그인 한 유저가 현재 보고있는 클럽에 속해있는지 확인하는 함수
    if user_signed_in?
      @current_check_club = ClubMember.find_by_club_id(@club.id) && ClubMember.find_by_user_id(current_user.id) 
    end
    # puts @current_check_club.club_id
    # 보고있는 클럽의 옵션테이블을 확인하는 테이블을 저장.
    @current_check_option = Option.find_by_club_id(@club.id)
  end
  
  def club_members
    if user_signed_in? && current_user.authorization == '0' || current_user.authorization == '1'
      @members = ClubMember.all
      @club_check = ClubMember.find_by_user_id(current_user.id)
    else
      redirect_to '/club/index'
    end
  end
  
  # 옵션에서 apply_active를 바꾸는 함수
  def option_change
    @option = Option.find_by_club_id(params[:club_id])
    
    if user_signed_in?
      if current_user.authorization == "0"
        # apply_active가 "0"이면 "1"로 바꾼다.
        if @option.apply_active == "0"
          @option.apply_active = "1"
        # 반대
        else
          @option.apply_active = "0"
        end
        
        @option.save
        redirect_to '/club/club_view/' + @option.club_id.to_s
      elsif current_user.authorization == "1"
        # 현재 로그인 한 유저가 보고있는 클럽에 속해있는지 확인하는 함수
        @check_in_club = ClubMember.find_by_user_id(current_user.id)
        # 만약 로그인 한 유저의 클럽이 보고있는 클럽과 다를경우
        if @check_in_club.club_id != params[:club_id].to_i
          redirect_to '/club/index/'
        else
          # apply_active가 "0"이면 "1"로 바꾼다.
          if @option.apply_active == "0"
            @option.apply_active = "1"
          # 반대
          else
            @option.apply_active = "0"
          end
          
          @option.save
          redirect_to '/club/club_view/' + @option.club_id.to_s
        
        end
      else
        redirect_to '/club/index/'
      end
    end
  end
  
  # 내 동아리 보기
  def my_club
    if user_signed_in?
      @clubs = ClubMember.all
      @club_check = ClubMember.find_by_user_id(current_user.id)
    else
      redirect_to '/'
    end
  end
  
  # 지원할 수 있는 단체 보기
  def appliable_club
    @clubs = Option.all
    # 옵션테이블에 활성화된 테이블을 찾는 함수
    @club_check = Option.find_by_apply_active('1')
  end
end
