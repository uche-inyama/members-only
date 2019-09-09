Rails.application.routes.draw do
  # get 'signup', to: 'users#new'
  # post 'signup', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :posts, only: [:new, :create, :index]
  resources :users, only: [:new, :create]
end
