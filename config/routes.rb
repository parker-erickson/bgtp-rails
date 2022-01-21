Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "listings#index"

  # Listings routes
  resources :listings

  # USers routes
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  #session routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
