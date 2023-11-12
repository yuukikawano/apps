Rails.application.routes.draw do
  resources :tasks
  resources :users
  resources :movies
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
