class AboutController < ApplicationController

  def about
  end

  def contact
  end

  def faq
  end

  # POST /contact
  def create
    @contact = contact_params
    ContactMailer.with(contact: @contact).contact_email.deliver_now
    redirect_to "/contact"
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:email, :body, :name)
    end


end
