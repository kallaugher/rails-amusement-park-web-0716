Rails.application.routes.draw do
  resources :users
  resources :attractions

  resources :sessions, only: :destroy

  root 'application#index'
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  get '/signout', to: 'sessions#destroy'

  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'session#destroy'


end
