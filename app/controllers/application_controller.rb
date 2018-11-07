class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery prepend: :true
  # before_action :authenticate_model!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :set_time_zone, if: :user_signed_in?
 


  protected
  def configure_permitted_parameters
    added_attrs = [:department_id, :name, :phone_number, :mail, :grade_id]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end    
  
  # private

  #   def set_time_zone
  #     Time.zone = current_user.time_zone
  #   end  
end
