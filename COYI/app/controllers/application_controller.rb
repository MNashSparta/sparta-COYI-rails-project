class ApplicationController < ActionController::Base
  protect_from_forgery only: [:index, :show]
  # skip_before_action :verify_authenticity_token
  before_action :configure_permitted_parameters, if: :devise_controller?
  include ActiveModel::Validations
  include Pundit


  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :first_name, :second_name, :username, :location, :country, :dob]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
