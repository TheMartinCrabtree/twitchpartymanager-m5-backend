Rails.application.routes.draw do
  get 'signups/update'
  get 'signups/create'
  get 'signups/show'
  resources :joinuserevents
  resources :users
    
  resources :announcements
  resources :servernames
  resources :voips
  resources :events
  resources :signups

  get '/persist', to: 'auth#persist'
  post '/login', to: 'auth#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
