Rails.application.routes.draw do
  resources :joinuserevents
  resources :users
    
  resources :announcements
  resources :servernames
  resources :voips
  resources :events

  get '/persist', to: 'auth#persist'
  post '/login', to: 'auth#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
