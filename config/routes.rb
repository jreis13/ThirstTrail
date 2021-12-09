Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/howitworks', to: 'pages#howitworks'
  get '/aboutus', to: 'pages#aboutus'
  get '/contact', to: 'pages#contact'
  get '/ourteam', to: 'pages#ourteam'
  get '/getstarted', to: 'pages#getstarted'
  get '/roulette', to: 'pages#roulette'
  get '/partners', to: 'pages#partners'
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  resources :preferences, only: [:index, :new, :create, :show]
  resources :recipes, only: [:index, :show] do
   member do
     patch "favorite", to: "favourites#favorite"
   end
   collection do
      get 'selection', to: "favourites#selection"
   end
  end

  # For details on the DSL availble within this file, see https://guides.rubyonrails.org/routing.html
end
