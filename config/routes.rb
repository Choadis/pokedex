Rails.application.routes.draw do

  get 'sessions/new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/search', to: 'pokemons#search'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :pokemons

  root "pokemons#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
