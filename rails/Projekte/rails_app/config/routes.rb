Rails.application.routes.draw do
  
  root 'events#index' #Wenn Localhost aufgerufen werden soll auf die Index Seite
  
  get 'signup' => 'users#new'
  resource :session
  resources :users
  resources :events do
  	resources :registrations
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#get "events" => "events#index"
#get "events/:id" => "events#show" 	


end
