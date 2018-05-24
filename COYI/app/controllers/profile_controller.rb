class ProfileController < ApplicationController

  def index

  end

  def my_profile

  end

  def show
      @user_to_show = User.where({id: params[:id]}).first
  end


end
