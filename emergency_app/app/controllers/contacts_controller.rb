class ContactsController < ApplicationController
  before_action :logged_in?, only: [:show, :index, :new]
  
	# 'contacts#index'
	def index
	  @contact = Contact.all 
	  render :index_contact
	end

	# 'contacts#new'
	def new
	  @contact = Contact.new
	  render :new_contact
	end

	# 'contacts#create'
	def create
      @contact = Contact.create(contact_params)	
	  redirect_to '/contacts'
	end

	# 'contacts#show'
	def show
	  @contact = Contact.find(params[:id])
	  render :show_contact
	end

	# 'contacts#edit'
	def edit
	  @contact = Contact.find(params[:id])
	  render :edit_contact
	end

    # 'contacts#update'
	def update
	  @contact = Contact.find(params[:id])
	  @contact.update_attributes(contact_params)
	  if @contact.save
	  	# flash_to[:notice] = 'Contact Updated'
	    redirect_to contact_path(@contact)
      # else
      # 	# flash[:error] = @contact.errors.full_messages.join(", ")
      # 	redirect_to '/contacts/#{@contact.id}'
	  end
  end
	# 'contacts#destroy' (still needs testing)
	def destroy
	  @contact = Contact.find(params[:id])
	  @contact.destroy
	  redirect_to '/contacts'
	end


 private

	def contact_params
		params.require(:contact).permit(:first_name, :last_name, :email, :number)
    end

end
