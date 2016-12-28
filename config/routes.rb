Rails.application.routes.draw do
  devise_scope :user do
    authenticated :user do
      root :to => 'home#admin' #matches this route when the above matches don't pass
    end

    #Route if not logged in
    unauthenticated do
      root :to => 'home#index', as: :unauthenticated_root
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
