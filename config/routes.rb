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
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :users
    resources :invoices
    # get '/all_users'
  end

  root to: 'main#home'

  get '/admin/all_users', to: 'admin/users#all_users'

  get '/home', to: 'user#home'
  get "/sign_in", to: "main#login"
  # get "/", to: "main#home", as: "/"
  get "/about", to: "main#about", as: "/about"
  get "/sign_up", to: "registrations#new"
  #note: need to fix above route
end
