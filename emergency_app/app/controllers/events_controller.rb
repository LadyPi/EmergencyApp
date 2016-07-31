class EventsController < ApplicationController
	before_action :logged_in?, only: [:show, :index, :new]
  
# 'events#index'
	def index
	  @event = Event.all
	  render :index_event
	end

	# 'events#new'
	def new
	  @event = Event.new
	  render :new_event
	end

	# 'events#create'
	def create
	  @event = Event.create(event_params)
	  render :show_event
	  # add all events button to go to all events
	end

	# 'events#show'
	def show
   #    p current_user.tasks
	  # @tasks = current_user.tasks
	  @event = Event.find(params[:id])
	  render :show_event
	end

	# 'events#edit'
	def edit
	  @event = Event.find(params[:id])
	  render :edit_event
	end

    # 'events#update'
	def update
	  @event = Event.find(params[:id])
	  @event.update_attributes(event_params)
	  if @event.save
      redirect_to event_path(@event)
	end
  end

	# 'events#destroy' (still needs testing)
	def destroy
	  @event = Event.find(params[:id])
	  @event.destroy
	  redirect_to '/events'
	end

	private

	def event_params
		params.require(:event).permit(:title)
    end
end
