class ListsController < ApplicationController
  before_action :logged_in?, only: [:show, :index, :new]
  
# 'lists#index'
	def index
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
	  @list = List.create(list_params)
	  render :show_list
	  # add all lists button to go to all lists
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
	  @list.update_attributes(list_params)
	  if @list.save
      redirect_to list_path(@list)
	end
  end

	# 'lists#destroy' (still needs testing)
	def destroy
	  @list = List.find(params[:id])
	  @list.destroy
	  redirect_to '/lists'
	end

	private

	def list_params
		params.require(:list).permit(:title, :todo)
    end
end
