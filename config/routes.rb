Rails.application.routes.draw do
  resources :payments
  resources :categories
  resources :invoices
  resources :homes
  resources :homeowners_associations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
