class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  respond_to :html, :json
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
