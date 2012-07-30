class PaymentController < ApplicationController
	
	def index
		@member = Member.find(params[:id]);
		@payments = @member.payments.all
	end

	def add
		@member = Member.find(params[:id]);
		@payment = Payment.new
		@url = payment_create_path(@member.id)
		render 'payment_form'
	end

	def create
		@member = Member.find(params[:id])
		payment = Payment.new(params[:payment])
		payment.member_id = @member.id
		payment.save!
		redirect_to payments_path
	rescue Exception => e
		@errormsg = e.message
		@payment = Payment.new
		@url = payment_create_path(@member.id)		
		render 'payment_form'
	end

	def edit
	end

	def update
	end

	def delete
	end
end
