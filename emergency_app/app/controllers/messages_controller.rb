class MessagesController < ApplicationController 
  before_action :logged_in?, only: [:show, :index, :new]
  
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
	  	redirect_to '/messages'
	end

#     def send_text
#     	@message = Message.new(phone_params)
#     	@numb = :contact => @number
#     	@message.send_sms(@numb.clean_number)
#     end

# 'messages#index'
	def index
	  # @user = current_user
	  # @contacts = @user.contacts
	  @contacts = Contact.all
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

	# def phone_params
	# 	params.require(:contact).permit(:number)
	# end
end
