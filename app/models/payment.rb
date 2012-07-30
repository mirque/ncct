class Payment < ActiveRecord::Base
	attr_accessible :payment_date, :renewal_date, :member_type
	
	validates :payment_date,  :presence => true
	validates :renewal_date,  :presence => true
	validates :member_type,  :presence => true

	belongs_to :member, :inverse_of => :payment
end
