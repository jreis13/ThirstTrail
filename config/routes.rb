Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :preferences, only: [:index, :new, :create, :show]
=======
  get '/aboutus', to: 'pages#aboutus'
  get '/contact', to: 'pages#contact'
  get '/ourteam', to: 'pages#ourteam'
  resources :preferences, only: [:index, :new, :create]
>>>>>>> 855d59043765e492df344a14252fb79eb6c52dd4
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
