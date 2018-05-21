class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :second_name, :username, :location, :country, :dob, :role])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :second_name, :username, :location, :country, :dob, :role])
    end

end
