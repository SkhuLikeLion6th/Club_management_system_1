class UsersController < ApplicationController
  before_action :authenticate_user!

  # 마이페이지
  def index
    @users= User.all
    unless ClubMember.find_by_user_id(current_user.id) == nil
      @club_id = ClubMember.find_by_user_id(current_user.id).club_id
    end
    
    @clubs = ClubMember.all
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   super
  # end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to '/'
    else
      render 'edit'
    end
  end
  
  def edit
  
    @user = User.find_by_id(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :password,
                                   :password_confirmation,:department_id,:grade_id,:mail,:phone_number)
    end
end