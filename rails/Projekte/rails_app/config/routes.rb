Rails.application.routes.draw do
  resources :users
  root 'events#index' #Wenn Localhost aufgerufen werden soll auf die Index Seite
  resources :events do
  	resources :registrations
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#get "events" => "events#index"
#get "events/:id" => "events#show" 	


end
