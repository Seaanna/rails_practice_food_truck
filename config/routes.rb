Rails.application.routes.draw do
  resources :truck_payments
  resources :payments
  resources :truck_categories
  resources :categories
  resources :truck_locations
  resources :locations
  resources :items
  resources :trucks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
