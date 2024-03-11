Rails.application.routes.draw do
  resources :videos
  devise_for :users
  resources :users
  resources :organizations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
