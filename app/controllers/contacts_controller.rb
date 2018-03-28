class ContactsController < ApplicationController
  # encoding: utf-8
  def new
    @contact = Contact.new
    if
      Contact.new(params[:contact]).deliver
      redirect_to '/contacts/new'
    end
  else

  end


  def create
    @contact = Contact.new(params[:contact])
    if
    @contact.valid?
      @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    end
      #flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      #flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
