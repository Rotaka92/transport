Rails.application.routes.draw do
  get 'problem/solve'
  get 'problem/read'
  root 'static_pages#home'
  
  resources :transportations
  resources :demand_sites
  resources :supply_sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
