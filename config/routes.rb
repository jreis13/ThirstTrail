Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/howitworks', to: 'pages#howitworks'
  get '/aboutus', to: 'pages#aboutus'
  get '/contact', to: 'pages#contact'
  get '/ourteam', to: 'pages#ourteam'
  get '/partners', to: 'partners#ourpartners'
  resources :preferences, only: [:index, :new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
