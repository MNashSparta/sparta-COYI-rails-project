class ContactMailer < ApplicationMailer
  default from: 'coyitest@gmail.com'

# Called in AboutController POST method create
  def contact_email
    @contact = params[:contact]
    mail(:to => "coyitest@gmail.com", :subject => "You have received a question from #{@contact[:name]}  @ #{@contact[:email]}", :body => "#{@contact[:body]}")
  end
end
