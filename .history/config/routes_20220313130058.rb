Rails.application.routes.draw do
  resources :clients
  resources :technicians
  resources :workorders
  resources :sites
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
