Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # get "up" => "rails/health#show", as: :rails_health_check
  root to: 'users#login'

  get '/login', to: 'users#login', as: 'login'

  resources :articles do
    get '/page/:page', action: :index, on: :collection
  end

  resources :posts do
    get '/page/:page', action: :index, on: :collection
  end

  # Defines the root path route ("/")
end
