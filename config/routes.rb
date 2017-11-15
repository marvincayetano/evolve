Rails.application.routes.draw do
  devise_for :users
  get 'contacts/new'

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'clients', to: 'pages#clients'

  # CONTACTS
  resources :contacts, only: [:create]
  get 'contact-us', to: 'contacts#new', as: 'new_contact'

  get 'login', to: 'pages#login'
  get 'products', to: 'pages#products'
  get 'services', to: 'pages#services'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
