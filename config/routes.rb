Rails.application.routes.draw do
  resources :trail_tags
  resources :tags
  resources :trails
  resources :friendships
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
