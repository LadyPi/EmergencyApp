class TasksController < ApplicationController
	before_action :logged_in?, only: [:show, :index, :new]
  
# 'tasks#index'
	def index
	  @task = Task.all
	  render :index_task
	end

	# 'tasks#new'
	def new
	  @task = Task.new
	  render :new_task
	end

	# 'tasks#create'
	def create
	  @task = Task.create(task_params)
	  render :show_task
	  # add all tasks button to go to all tasks
	end

	# 'tasks#show'
	def show
	  @task = Task.find(params[:id])
	  render :show_task
	end

	# 'tasks#edit'
	def edit
	  @task = Task.find(params[:id])
	  render :edit_task
	end

    # 'tasks#update'
	def update
	  @task = Task.find(params[:id])
	  @task.update_attributes(task_params)
	  if @task.save
      redirect_to task_path(@task)
	end
  end

	# 'tasks#destroy' (still needs testing)
	def destroy
	  @task = Task.find(params[:id])
	  @task.destroy
	  redirect_to '/tasks'
	end

	private

	def task_params
		params.require(:task).permit(:title, :step)
    end
end
