Rails.application.routes.draw do
  
  root 'customers#index'
  resources :session
  
  get 'customermail' => 'customers#customermail'
  get 'signup' => 'users#new'
  get 'sendmail' => 'customers#sendmail'
  resources :users
  

    resources :customers do
      resources :cars do
        resources :tires
      end
    end
	


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
