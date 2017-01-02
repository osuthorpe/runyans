Rails.application.routes.draw do

  get '/admin', to: 'home#admin'

  resources :features
  resources :services
  resources :categories
  resources :products
  resources :teams
  resources :users, only: [:index, :destroy]

  root :to => 'home#index'

  # devise_for :users
  devise_for :users, path: '', path_names: { sign_out: 'logout'}
end
