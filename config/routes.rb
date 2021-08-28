Rails.application.routes.draw do
  root to: 'home#index'

	get '/login'     => 'sessions#new'
	post '/login'    => 'sessions#create'
	delete '/logout' => 'sessions#destroy'
	get '/logout' => 'sessions#destroy'

  get '/home'      => 'home#index'
end
