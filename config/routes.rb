Rails.application.routes.draw do
  get 'sessions/new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/search', to: 'pokemons#search'
  get '/results', to: 'pokemons#results'
  resources :users
  resources :pokemons
  resources :types
  resources :abilities

  root "pokemons#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
