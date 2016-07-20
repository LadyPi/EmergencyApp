class ListsController < ApplicationController
  before_action :logged_in?, only: [:show, :index, :new]
  
# 'lists#index'
	def index
	  # @user = current_user
	  @list = List.all
	  render :index_list
	end

	# 'lists#new'
	def new
	  @list = List.new
	  render :new_list
	end

	# 'lists#create'
	def create
	  list_params = params.require(:list).permit(:title, :todo)
	  @list = List.create(list_params)
	  # @user = current_user
	  # @user.lists << @list
	  render :show_list
	end

	# 'lists#show'
	def show
	  @list = List.find(params[:id])
	  render :show_list
	end

	# 'lists#edit'
	def edit
	  @list = List.find(params[:id])
	  render :edit_list
	end

    # 'lists#update'
	def update
	  @list = List.find(params[:id])
	  @list_params = params.require(:list).permit(:title, :todo)
	  render :edit_list
	end

	# 'lists#destroy' (still needs testing)
	def destroy
	  @list = List.find(params[:id])
	  @list.destroy
	  redirect_to '/lists'
	end
end
