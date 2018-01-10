Rails.application.routes.draw do
  get 'contacts/new'
  root to: 'pages#home'

  # USER LOGIN
  # Devise is a gem for user authentication
  devise_for :users

  # USER PROFILE
  # resource :profile is singular which mean each user
  # has only one profile each, has many will be profiles
  resources :users do
    resource :profile
  end

  # USER PROFILE USER TYPE
  resources :users do
    resource :user_type, except: :destroy
  end


  get 'about', to: 'pages#about'
  get 'clients', to: 'pages#clients'

  # CONTACTS
  resources :contacts, only: [:create]
  get 'contact-us', to: 'contacts#new', as: 'new_contact'

  get 'login', to: 'pages#login'
  get 'products', to: 'pages#products'
  get 'services', to: 'pages#services'
  
end
