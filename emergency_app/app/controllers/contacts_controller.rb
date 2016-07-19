class ContactsController < ApplicationController

	# 'contacts#index'
	def index
	  @contact = Contact.all 
	  render :index_contact
	end

	# 'contacts#new'
	def new
	  # @contact = Contact.all for testing	
	  render :new_contact
	end

	# 'contacts#create'
	def create
	  # @contact = Contact.all for testing	
	  redirect_to '/contacts'
	end

	# 'contacts#show'
	def show
	  # @contact = Contact.all
	  render :show_contact
	end

	# 'contacts#edit'
	def edit
	  # @contact = Contact.all
	  render :edit_contact
	end

    # 'contacts#update'
	def update
	  # @contact = Contact.all
	  # for now just redirect to all
	  redirect_to '/contacts'
	end

	# 'contacts#destroy' (still needs testing)
	def destroy
	  # @contact = Contact.all
	  redirect_to '/contacts'
	end
end
