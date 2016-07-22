class SessionsController < ApplicationController

  # 'sessions#new'
  def new
  	@user = User.new
  	render :new_sessions
  end

  # 'sessions#create'
  def create
  	user_params = params.require(:user).permit(:email, :password)
  	@user = User.confirm(user_params)
  	if @user
  		login(@user)
  		redirect_to user_path(@user)
  	else
  		flash[:error] = 'Invalid email/password combination'
  		redirect_to signin_path
  	end
  end

  
  def delete
   	session.delete(:user_id)
    redirect_to '/'
   end

   private 

   def user_params
    params.require(:user).permit(:email, :password)
  end
  
end
