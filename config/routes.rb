Rails.application.routes.draw do
  get 'cards/show'
  get 'cards/history'
  get 'shops/show'
  resources :products
  get 'sessions/new'
  get 'users/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  # Defines the root path route ("/")
  # root "articles#index"
  get 'home/about'
 get "products/index"
 get "products/new"
 root"home#index"
 get "home/shop"
 get "home/signup"
 get "home/about"
 get "home/contact"
 get "home/testimal"
 get "/login", to: "sessions#new"
post "/login", to: "sessions#create"
delete "logout", to: "sessions#destroy"
delete "delete", to: "order_items#destroy"
 resources :stores
 resources :users
 resources :orders
 resources :shops, only:[:index, :show]
 resources :order_items
 resource :cards, only:[:show]
 get "stores/new"

end