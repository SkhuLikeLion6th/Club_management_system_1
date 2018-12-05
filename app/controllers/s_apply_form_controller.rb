class SApplyFormController < ApplicationController
  def index
    @forms = SApplyForm.all
  end

  def new
  end

  def create
    # 로그인이 되어있고 동아리 관리자일 때만 지원양식 생성가능
    if user_signed_in? && current_user.authorization=='4'
      if SApplyForm.find_by_small_group_id(params[:small_group_id]) == nil
        @form = SApplyForm.new
        @user = GroupMember.find(params[:user_id])
 
        @form.small_group_id = current_user.small_group_id
        @form.title1 = params[:title1]
        @form.title2 = params[:title2]
        @form.title3 = params[:title3]
        @form.title4 = params[:title4]
        @form.title5 = params[:title5]
        @form.save
          

                  
        
      end
    end
    redirect_to '/s_apply_form/index'
  end
  
  def edit
    @form = SApplyForm.find(params[:small_group_id])
  end
  
  def update
    # 로그인이 되어있고 동아리 관리자일 때만 지원양식 수정가능

    if user_signed_in? && current_user.authorization =='4'
      @form = SApplyForm.find(params[:small_group_id])
      @form.small_group_id = params[:small_group_id]
      @form.title1 = params[:title1]
      @form.title2 = params[:title2]
      @form.title3 = params[:title3]
      @form.title4 = params[:title4]
      @form.title5 = params[:title5]
      @form.save    
    end
    redirect_to '/s_apply_form/index'
  end
  
end
