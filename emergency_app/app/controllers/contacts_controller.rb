class ContactsController < ApplicationController
  before_action :logged_in?, only: [:show, :index, :new]
  
	# 'contacts#index'
	def index
	  # @user = current_user
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
	  contact_params = params.require(:contact).permit(:first_name, :last_name, :email, :number)
      @contact = Contact.create(message_params)	
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
	  @contact_params = params.require(:contact).permit(:first_name, :last_name, :email, :cell_phone_number)
	  redirect_to '/contacts'
	end

	# 'contacts#destroy' (still needs testing)
	def destroy
	  @contact = Contact.find(params[:id])
	  @contact.destroy
	  redirect_to '/contacts'
	end
end
