require 'json'

namespace :pokedex do
  desc 'load first 151 pokemon images'
  task :load_pokemon_images => [:environment] do
    Pokemon.all.each do |pokemon|
      pokemon.avatar = File.open("lib/pokemon/#{pokemon.number}.jpg")
      pokemon.save if pokemon.avatar?
    end
  end
end
