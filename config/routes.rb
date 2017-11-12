Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'clients', to: 'pages#clients'
  get 'contactus', to: 'pages#contactus'
  get 'login', to: 'pages#login'
  get 'products', to: 'pages#products'
  get 'services', to: 'pages#services'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
