class Message < ActiveRecord::Base
  belongs_to :user

#Twilio 

  def self.send_sms(number, msg)
  		puts msg
		acct_sid = "AC21b4815bc39d01f5ff60563c63d0f91f"
		auth_token = "952a13afa707dc3753032b31bdaccc5b"
	 
		@client = Twilio::REST::Client.new acct_sid, auth_token

		from = '+16502851246'

	    @client.account.messages.create(
	      :from => from,
	      :to => number,
	      # may use this for a prefined number
	      :body => msg["text"]
	    )
	end

end
