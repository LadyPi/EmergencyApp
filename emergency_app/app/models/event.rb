class Event < ActiveRecord::Base
	has_many :messages
	has_many :contacts
	has_many :contacts
end
