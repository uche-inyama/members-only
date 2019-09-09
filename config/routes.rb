Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
