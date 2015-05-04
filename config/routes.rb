Rails.application.routes.draw do
  resources :pokemons, only: [:show, :index]
end
