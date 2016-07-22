class UsersController < ApplicationController
  before_action :logged_in?, only: [:show, :index]

    # 'users#index'
    # In the future: all members on same profile
	
	# delete after testing or only admin rights
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
	  @user = User.create(user_params)
	  # log-in upon sign up
	  login(@user) 
	  # just for testing, make sure to about page
	  redirect_to user_path(@user)
	end

	# 'users#show'
	def show
	  @user = User.find(params[:id])
	  render :show_user
	end

	# 'users#edit'
	def edit
	  @user = User.find(params[:id])
	  render :edit_user
	end

    # 'users#update'
	def update
	  @user = User.find(params[:id])
	  @user.update_attributes(user_params)
	  if @user.save
	    redirect_to user_path(@user)
	end
  end

	# 'users#destroy' (still needs testing)
	def destroy
	  @user = User.find(params[:id])
	  @user.destroy
	  redirect_to '/users'
	end

end

    private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
 
