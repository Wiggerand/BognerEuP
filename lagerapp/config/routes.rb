Rails.application.routes.draw do
  
  root 'customers#index'
    
  get 'customermail' => 'customers#customermail'
  get 'sendmail' => 'customers#sendmail'
  
  get 'signup' => 'users#new'

  resources :users
  resources :session

    resources :customers do
      resources :cars do
        resources :tires
      end
    end
	


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
