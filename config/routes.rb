Rails.application.routes.draw do
  get '/contact' => 'contacts#one_contact'
  get 'contacts' => 'contacts#many_contacts'
end
