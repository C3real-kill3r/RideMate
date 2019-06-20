Rails.application.routes.draw do
  root 'home#index'

  resources :users do
    resources :rides, only: [:create, :destroy, :index]
  end

  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login_new'
  post 'login', to: 'sessions#create', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get ':id/request', to: 'rides#request_ride', as: 'request'
  get ':id/cancel', to: 'rides#cancel_request', as: 'cancel'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
