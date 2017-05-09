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
													phone_number: params[:phone_number]
													)
		contact.save
	end

	def show
		@contact = Contact.new()
	end

	def edit
		
	end


end
