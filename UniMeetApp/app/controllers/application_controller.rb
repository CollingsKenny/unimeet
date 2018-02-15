class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  if :devise_controller?
    before_action :configure_permitted_parameters
  end  
  
  protected

  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :birthday, :email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :middle_name, :last_name, :bio, :college_location, :interests, :password, :current_password])
  end
end
