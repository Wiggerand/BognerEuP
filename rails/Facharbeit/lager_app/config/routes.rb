Rails.application.routes.draw do
  root "customers#index"
  resources :customers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
