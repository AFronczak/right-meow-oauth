Rails.application.routes.draw do
  resource :user, only: [:edit, :update]
  resources :pets
  resources :care_providers

  root 'homepage#index'

  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

end
