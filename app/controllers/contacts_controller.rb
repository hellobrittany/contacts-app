class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def new
		
	end

	def create
		contact = Contact.new(
													first_name: params[:first_name],
													last_name: params[:last_name],
													email: params[:email],
													phone_number: params[:phone_number],
													middle_name: params[:middle_name],
													bio: params[:bio]
													)
		contact.save
	end

	def show
		contact_id = params[:id]
		@contact = Contact.find_by(id: contact_id)
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		contact = Contact.find(params)
		contact.assign_attributes(
															first_name: params[:first_name], 
															last_name: params[:last_name],
															email: params[:email],
															phone_number: params[:phone_number],
															middle_name: params[:middle_name],
															bio: params[:bio])
		contact.save
	end

	def destroy
		contact = Contact.find(params[:id])
		contact.destroy
		
	end


end
