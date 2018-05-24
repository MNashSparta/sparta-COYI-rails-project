class ProfileController < ApplicationController

  def index

  end

  def my_profile

  end

  def show
    if(params.has_key?(:lastname))
            #Grabs user with capital first letter or no capital first letter
      @user_to_show = User.where(first_name: params[:name].capitalize, last_name: params[:lastname]).or(User.where(first_name: params[:name], last_name: params[:lastname]))
      puts "#{@user_to_show} is here"
    else
                      #Grabs user with capital first letter or no capital first letter
      @user_to_show = User.where(first_name: params[:name].capitalize).or(User.where(first_name: params[:name])).first
      puts "#{@user_to_show} is here"
    end

  end

end
