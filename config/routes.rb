Rails.application.routes.draw do
  resources :users, only: [:edit, :update]
  resources :care_providers

  root 'homepage#index'

  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  #post from pet form should return to users edit form
  post '/pets' => 'users#edit'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
