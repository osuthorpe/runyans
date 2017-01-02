Rails.application.routes.draw do

  resources :features
  resources :services
  resources :categories
  resources :products
  resources :teams
  resources :users

  get '/admin', to: 'home#admin'

  root :to => 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
