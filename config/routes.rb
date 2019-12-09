Rails.application.routes.draw do
  root 'home#index'

  resources :orders
  resources :users
  resources :books
  

  get 'home/index'
  get 'home/productdetail'
  get 'home/product'

  get 'books/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

end

