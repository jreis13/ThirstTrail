Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/howitworks', to: 'pages#howitworks'
  get '/aboutus', to: 'pages#aboutus'
  get '/contact', to: 'pages#contact'
  get '/ourteam', to: 'pages#ourteam'
  resources :preferences, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
