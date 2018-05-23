class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  include ActiveModel::Validations
  include Pundit
  protect_from_forgery with: :exception
<<<<<<< HEAD
  skip_before_action :verify_authenticity_token
=======

  before_action :configure_permitted_parameters, if: :devise_controller?
>>>>>>> 97fdbea1d4ef81035c0ed7c2f0fafde3e69a887e

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :first_name, :second_name, :username, :location, :country, :dob]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
