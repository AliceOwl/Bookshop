Rails.application.routes.draw do
  root 'books#index'

  resources :orders
  resources :users
  resources :books
  

  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

end

