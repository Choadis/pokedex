Rails.application.routes.draw do
  resources :pokemons
  resources :types
  resources :abilities
  root "pokemons#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
