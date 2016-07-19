class MessagesController < ApplicationController

# 'messages#new'
	def new
      @message = Message.new
	  render :new_message
	end

	# 'messages#create'
	def create
	  message_params = params.require(:message).permit(:text)
	  @message = Message.create(message_params)
	  # @user = current_user 
	   # if @message.save
	   # temporary
	  	redirect_to '/lists'
	end

'messages#index'
	def index
	  @messages = Message.all	
	  render :index_message
	end

	# 'messages#show'
	def show
	  @message = Message.find(params[:id])
	  render :show_message
	end

	# 'messages#destroy' (still needs testing)
	# def destroy
	#   # @message = Message.all
	#   redirect_to '/messages'
	# end
end
