Rails.application.routes.draw do
  root to: 'home#index'

	get '/login'     => 'sessions#new'
	post '/login'    => 'sessions#create'
	delete '/logout' => 'sessions#destroy'
	get '/logout' => 'sessions#destroy'

  get '/home'      => 'home#index'

  resource :gate, only: [], controller: 'gate' do
    collection do
      post :open
      get :open
    end
  end
end
