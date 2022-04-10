Rails.application.routes.draw do
  resources :clients do 
    resources :sites do 
      resources :workorders
    end 
  resources :technicians
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
