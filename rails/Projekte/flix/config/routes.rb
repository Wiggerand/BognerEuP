Rails.application.routes.draw do
  resources :users
	root "movies#index"
  resources :movies do
  	resources :reviews
  	 
  end
  get "allreviews" => "movies#alle"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
