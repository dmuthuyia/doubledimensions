class ContactFormController < ApplicationController
	def new
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
