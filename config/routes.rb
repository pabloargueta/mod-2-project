Rails.application.routes.draw do
  # get 'main/home'
  # get 'main/about'
  # get 'main/signup'
  resources :payments
  resources :categories
  resources :invoices
  resources :home_owners
  resources :homeowners_associations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get "/", to: "main#home", as: "/"
  get "/about", to: "main#about", as: "/about"
  get "/signup", to: "main#signup", as: "/signup"
end
