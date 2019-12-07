Rails.application.routes.draw do

  root 'books#index'

  
  resources :users, only: [:new, :create]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  resources :orders
  resources :books

  get 'home/index'
  get 'users/index'
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

end

