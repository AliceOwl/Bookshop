Rails.application.routes.draw do

  get 'carts/show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
  get 'shops/index'
  get 'shops/show'

  root 'home#index'

  resources :books

  namespace :charts do
    get "best-reviews"
  end
 

  resources :shops, only: [:index, :show]
  resources :order_items
  resource :carts, only:[:show]
  
  #match '/users/:id', :to => 'users#destroy', :as => :destroy_user, :via => :delete
  #devise_for :users, :controllers => { :sessions => "users/sessions" }

  get 'home/index'
  get 'home/productdetail'
  get 'home/product'
  get 'home/chart'
  get 'home/contact'
  get 'home/stories'
  
  
  



  get 'admin/index'
  get 'home/profile'

  get 'books/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

end

