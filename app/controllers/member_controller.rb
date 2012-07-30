class MemberController < ApplicationController

	# display list of members
	def index
		@members = Member.scoped
	end

	# put up the 'add member' form
	def add
		@member = Member.new
		@url = member_create_path
		render 'member_form'
	end
	
	# process the 'add member' form
	def create
		@member = Member.new(params[:member])
		@member.save!
		redirect_to member_index_path
	rescue Exception => e
		@errormsg = e.message		
		@url = member_create_path
		render 'member_form'
	end
	
	# put up the 'edit member' form
	def edit
		@member = Member.find(params[:id])
		@url = member_update_path(@member.id)
		render 'member_form'
	end
	
	# process the 'edit member' form
	def update
		@member = Member.find(params[:id])
		@member.update_attributes!(params[:member])
		redirect_to member_index_path
	rescue Exception => e
		@errormsg = e.message
		@url = member_update_path(@member.id)
		render 'member_form'
	end
	

end
