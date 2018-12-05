class SmallGroupsController < ApplicationController
  before_action :set_small_group, only: [:show, :edit, :update, :destroy]

  # GET /small_groups
  # GET /small_groups.json
  def index
    @small_groups = SmallGroup.all
    puts @small_groups.count
    
    
    
  end

  # GET /small_groups/1
  # GET /small_groups/1.json
  def show
    @small_group = SmallGroup.find(params[:id])
    @new_comment = Comment.build_from(@small_group, current_user.id, "")
    
    @members = GroupMember.all
    if user_signed_in?
      @current_check_group = GroupMember.find_by_small_group_id(@small_group.id) && GroupMember.find_by_user_id(current_user.id) 
    end
    # puts @current_check_club.club_id
    # 보고있는 클럽의 옵션테이블을 확인하는 테이블을 저장.
    @current_check_option = GroupOption.find_by_small_group_id(@small_group.id)    
  end

  # GET /small_groups/new
  def new
    @small_group = SmallGroup.new
  end

  # GET /small_groups/1/edit
  def edit
  end

  # POST /small_groups
  # POST /small_groups.json
  def create
    
    
    @small_group = SmallGroup.new(small_group_params)
    @small_group.user_id = current_user.id

    respond_to do |format|
      if @small_group.save
        @option = GroupOption.new
        @option.small_group_id = @small_group.id
        @option.apply_active = "0"
        @option.view_active = "0"
            
        @option.save
            
        @member = GroupMember.new
        @member.user_id = current_user.id
        @member.small_group_id = @small_group.id
        @member.save
        if current_user.authorization =='2'
            current_user.authorization = '4'
        end
        current_user.save
        format.html { redirect_to @small_group, notice: '' }
        format.json { render :show, status: :created, location: @small_group }
      else
        format.html { render :new }
        format.json { render json: @small_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /small_groups/1
  # PATCH/PUT /small_groups/1.json
  def update
    respond_to do |format|
      if @small_group.update(small_group_params)
        
        format.html { redirect_to @small_group, notice: '' }
        format.json { render :show, status: :ok, location: @small_group }
      else
        format.html { render :edit }
        format.json { render json: @small_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /small_groups/1
  # DELETE /small_groups/1.json
  def destroy
    @small_group.destroy
    respond_to do |format|
      format.html { redirect_to small_groups_url, notice: '' }
      format.json { head :no_content }
    end
  end

  def add_group_member # 클럽 멤버를 추가하는 함수
    if user_signed_in? && current_user.authorization != '4' &&
      # 클럽 멤버에 존재하지 않은 경우만 추가
      ClubMember.where(club_id: params[:small_group_id], user_id: params[:user_id]).exists? == false
      
      @member = GroupMember.new
      @member.user_id = params[:user_id]
      @member.club_id = params[:small_group_id]
      @member.save
    end
    redirect_to '/s_apply_content/index'
  end

  def delete_group_member # 클럽 멤버를 지우는 함수
    if user_signed_in?
      @member = GroupMember.find(params[:group_member_id])
      # 현재 로그인 한 유저가 서버관리자 이거나 지우는 유저의 클럽아이디가 로그인하고 있는 클럽아이디가 같고 단체 관리자이면 멤버를 삭제할수있다.
      if current_user.authorization == '0' || current_user.authorization == '4'
        # if ClubMember.find_by(:user_id => current_user.id, :use)
        @member.destroy
        
        redirect_to '/small_groups/club_members'
      else
        redirect_to '/small_groups/'
      end
    end
  end

  def group_members
    @small_groups = SmallGroup.all
    if user_signed_in? && current_user.authorization == '0' || current_user.authorization == '4'
      @members = GroupMember.all
      @group_check = GroupMember.find_by_user_id(current_user.id)
    else
      redirect_to '/small_groups/'
    end
  end
  
  def option_change
    @option = GroupOption.find_by_small_group_id(params[:small_group_id])
    
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
        redirect_to '/small_groups/' + @option.small_group_id.to_s
      elsif current_user.authorization == "4"
        # 현재 로그인 한 유저가 보고있는 클럽에 속해있는지 확인하는 함수
        @check_in_group = GroupMember.find_by_user_id(current_user.id)
        # 만약 로그인 한 유저의 클럽이 보고있는 클럽과 다를경우
        if @check_in_group.small_group_id != params[:small_group_id].to_i
          redirect_to '/small_groups/'
        else
          # apply_active가 "0"이면 "1"로 바꾼다.
          if @option.apply_active == "0"
            @option.apply_active = "1"
          # 반대
          else
            @option.apply_active = "0"
          end
          
          @option.save
          redirect_to '/small_groups/' + @option.small_group_id.to_s
        
        end
      else
        redirect_to '/small_groups/'
      end
    end
  end
  
  def appliable_club
    @groups = GroupOption.all
    # 옵션테이블에 활성화된 테이블을 찾는 함수
    @group_check = GroupOption.find_by_apply_active('1')
    @group_check2 = GroupOption.find_by_view_active('1')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_small_group
      @small_group = SmallGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def small_group_params
      
      params.require(:small_group).permit(:group_name, :introduce, :content, :img_url, :user_id)
    end
end
