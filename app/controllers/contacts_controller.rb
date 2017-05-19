class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
			sort_attribute = params[:sort]
			sort_order = params[:sort_order]
			search_term = params[:search_term]
			if search_term
				@contacts = Contact.where(
																	"first_name iLike ? OR last_name iLIKE ? OR middle_name iLIKE ?",
																	 "%#{search_term}%",
																	 "%#{search_term}%", 
																	 "%#{search_term}%"
																	 )
			end

			if sort_attribute && sort_order
				@contacts = @contacts.order(sort_attribute => sort_order)
			elsif sort_attribute
				@contacts = @contacts.order(sort_attribute)		
			end	
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
