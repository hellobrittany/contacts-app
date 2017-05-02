class ContactsController < ApplicationController
	def one_contact
		@contact = Contact.first
		render 'one_contact_view.html.erb'
	end

	def many_contacts
		@contacts = Contact.all? 
		render = 'many_contacts.html.erb'
	end
end
