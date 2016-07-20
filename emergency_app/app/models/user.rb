class User < ActiveRecord::Base
  has_secure_password

  has_many :lists
  has_many :contacts
  has_many :messages

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /@/}

  def self.confirm(params)
  	@user = User.find_by({email: params[:email]})
  	@user.try(:authenticate, params[:password])
  end
end
