class UserMailer < ApplicationMailer
  default from: 'coyitest@gmail.com'

  def welcome(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to My Awesome Site")
  end
end
