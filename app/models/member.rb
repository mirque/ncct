class Member < ActiveRecord::Base
	attr_accessible :lastname, :firstname, :address1, :address2, :city, :state, :postal,
		:email, :email_name, :expiration_date
		
	has_many :payments, :inverse_of => :member

	validates :firstname,  :presence => true
	validates :lastname,  :presence => true
	validates :expiration_date,  :presence => true
end
