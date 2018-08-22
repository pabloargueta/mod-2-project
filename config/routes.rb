Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # get 'main/home'
  # get 'main/about'
  # get 'main/signup'
  resources :payments
  resources :categories
  resources :invoices
  resources :users
  resources :homeowners_associations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: 'main#home'

  get "/sign_in", to:  "main#login"
  # get "/", to: "main#home", as: "/"
  get "/about", to: "main#about", as: "/about"
  get "/sign_up", to: "registrations#new"
end
