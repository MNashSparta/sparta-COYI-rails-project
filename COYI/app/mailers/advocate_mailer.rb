class AdvocateMailer < ApplicationMailer
  default from: 'coyitest@gmail.com'

  # Called in AskAdvocatesController POST method create
  def advocate_email
    @question = params[:ask_advocate]
      mail(:to => User.where(id: @question.email_to).first.email, :subject => "You have received a question from #{User.find(@question.user_id).first_name} #{User.find(@question.user_id).second_name}: #{@question.title}", :body => "#{@question.body}")
  end

end
