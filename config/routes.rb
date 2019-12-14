Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
  get 'shops/index'
  get 'shops/show'

  root 'home#index'

  resources :books
  resources :shops, only: [:index, :show]
  resources :order_items
  
  #match '/users/:id', :to => 'users#destroy', :as => :destroy_user, :via => :delete
  #devise_for :users, :controllers => { :sessions => "users/sessions" }

  get 'home/index'
  get 'home/productdetail'
  get 'home/product'
  
  
  get 'admin/index'
  get 'home/profile'

  get 'books/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

end

