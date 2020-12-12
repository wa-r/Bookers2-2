class ApplicationController < ActionController::Base
  before_action :configure_permitted_parametes, if: devise_contoroller?

  protected

  def configure_permitted_parametes
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end

end