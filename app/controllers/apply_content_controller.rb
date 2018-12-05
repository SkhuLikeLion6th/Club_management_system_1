class ApplyContentController < ApplicationController
  def index
    # @forms = ApplyForm.all.reverse
    if user_signed_in?
      @current_check_club = ClubMember.find_by_user_id(current_user.id)
      @contents = ApplyContent.all.reverse
    else
      redirect_to '/'
    end
  end
  
  def index_backup
    @forms = ApplyForm.all.reverse
    @apply_contents= ApplyContent.all
  end
  
  def user_application_view
      @content = ApplyContent.find(params[:apply_content_id])
      if user_signed_in?
        # 서버 관리자
        if current_user.authorization == '0'
          @form = @content.apply_form
        # 단체 관리자의 소속 단체와 보고자하는 단체 id가 같으면 권한을 가짐
        elsif current_user.authorization == '1' && @content.apply_form.club_id == ClubMember.find_by_user_id(current_user.id).club_id
          @form = @content.apply_form
        # 일반 유저가 내용을 보려면 글쓴이의 id와 현재 로그인한 id가 같아야함
        elsif current_user.authorization == '2' && @content.user_id == current_user.id
          @form = @content.apply_form
        else
          redirect_to '/'
        end
      else
        redirect_to '/'
      end
  end
  
  def new
    @apply_form = ApplyForm.find_by(:club_id => params[:club_id])
  end
  
  def create
    if user_signed_in? && ApplyContent.where(apply_form_id: params[:apply_form_id], user_id: params[:user_id]).exists? == false
      @apply_content = ApplyContent.new
      @apply_content.apply_form_id = params[:apply_form_id]
      @apply_content.user_id = params[:user_id]
      @apply_content.content1 = params[:content1]
      @apply_content.content2 = params[:content2]
      @apply_content.content3 = params[:content3]
      @apply_content.content4 = params[:content4]
      @apply_content.content5 = params[:content5]
      @apply_content.save
    end
    redirect_to '/apply_content/user_application_view/' + @apply_content.id.to_s
  end
  
  def edit
    @content = ApplyContent.find(params[:apply_content_id])
    if user_signed_in? && @content.user_id == current_user.id
      @form = @content.apply_form
    else
      redirect_to '/'
    end
  end
  
  def update
    if user_signed_in?
      @apply_content = ApplyContent.find(params[:apply_content_id])
      @apply_content.content1 = params[:content1]
      @apply_content.content2 = params[:content2]
      @apply_content.content3 = params[:content3]
      @apply_content.content4 = params[:content4]
      @apply_content.content5 = params[:content5]
      @apply_content.save
    end
    
    redirect_to '/apply_content/user_application_view/' + @apply_content.id.to_s
  end
  
  def destroy
    @content = ApplyContent.find(params[:apply_content_id])
    # 위 user_application_view 참고
    if user_signed_in?
      if current_user.authorization == '0'
        @content.destroy
        redirect_to '/'
      elsif current_user.authorization == '1' && @content.apply_form.club_id == ClubMember.find_by_user_id(current_user.id).club_id
        @content.destroy
        redirect_to '/'
      elsif current_user.authorization == '2' && @content.user_id == current_user.id
        @content.destroy
        redirect_to '/'
      else
        redirect_to '/'
      end
    else
      redirect_to '/'
    end
  end
end
