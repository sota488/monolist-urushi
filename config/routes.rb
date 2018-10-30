Rails.application.routes.draw do
  get 'items/new'

  root to: 'toppage#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
  resources :users, only: [:show, :new, :create]
  resources :items, only: [:new]
end
