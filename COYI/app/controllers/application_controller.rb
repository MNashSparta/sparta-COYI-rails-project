class ApplicationController < ActionController::Base
  # skip_before_action :verify_authenticity_token
  before_action :configure_permitted_parameters, if: :devise_controller?
  include ActiveModel::Validations
  include Pundit


  protect_from_forgery only: [:index, :show]
  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :first_name, :second_name, :username, :location, :country, :dob]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  private
  def after_sign_in_path_for(resource)
  user_profile_path
end

  def after_sign_out_path_for(resource_or_scope)
      user_session_path
  end
end
