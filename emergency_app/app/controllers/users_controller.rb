class UsersController < ApplicationController
    
    # 'users#index'
    # In the future: all members on same profile
	
	def index
	  @users = User.all	
	  render :index_user
	end

	# 'users#new'
	def new
	  @user = User.new	
	  render :new_user
	end

	# 'users#create'
	def create
	  user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
	    # user_params = params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :location)
	  @user = User.create(user_params)
	  redirect_to '/users'
	end

	# 'users#show'
	def show
	  @user = User.find(params[:id])
	  render :show_user
	end

	# 'users#edit'
	def edit
	  # @contact = Contact.all
	  render :edit_user
	end

    # 'users#update'
	def update
	  # @contact = Contact.all
	  # for now just redirect to all
	  redirect_to '/users'
	end

	# 'users#destroy' (still needs testing)
	def destroy
	  # @contact = Contact.all
	  redirect_to '/users'
	end

end
