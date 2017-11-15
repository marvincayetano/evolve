class ContactsController < ApplicationController

  # GET request to /contact-us
  # Show new contact form page
  def new
    @contact = Contact.new
  end

  # POST request /contacts
  def create
    # Instantiate new Contact Object
    @contact = Contact.new(contact_params)
    if @contact.save # Saves to database and returns true or false
      name = params[:contact][:name]
      email = params[:contact][:email]
      body  = params[:contact][:comments]
      ContactMailer.contact_email(name, email, body).deliver # Calls contact_email function from ContactMailer class
      flash[:success] = "Message sent."# Changable :success
      redirect_to new_contact_path
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end

  private
    # Collects data from form
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end
end
