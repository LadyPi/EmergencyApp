class MessagesController < ApplicationController 
  include MessagesHelper
  before_action :logged_in?, only: [:show, :index, :new]
  
  # 'messages#index'
	def index
	  @contacts = current_user.contacts
	  @messages = Message.all	
	  render :index_message
	end

# 'messages#new'
	def new
	  # current_user.contacts << Contact.new({number: 123, first_name: "al", last_name: 'W'})
	  p current_user.contacts
	  @contacts = current_user.contacts
	  @message = Message.new
	  render :new_message
	end

    # 'messages#create'
	def create
	  message = Message.new(message_params)
	  message.user = @current_user
	  message.save
	  number = params[:message][:number] # TODO: refactor
	  send_text(message, number)
	  # @user = current_user 
	   # if @message.save
	   # temporary
	  	redirect_to '/messages'
	end

	# 'messages#show'
		def show
		  @message = Message.find(params[:id])
		  render :show_message
		end

    def send_text(message, number)
    	phone_number = clean_number(number)
    	phone_number ? # send text if number is valid
    		Message.send_sms(number, message) : nil
    end

	def phone_params
		params.require(:contact).permit(:number)
	end

	# 'messages#destroy' (still needs testing)
	# def destroy
	#   # @message = Message.all
	#   redirect_to '/messages'
	# end

private

	def message_params
		params.require(:message).permit(:text, :number)
    end

end
