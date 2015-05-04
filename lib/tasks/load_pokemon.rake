require 'json'

namespace :pokedex do
  desc 'load first 151 pokemon'
  task :load_pokemon => [:environment] do
    pokemon_json = JSON.load(File.read('lib/pokemon.json'))
    pokemon_json.each do |pokemon|
      pokemon_data = pokemon[1]
      Pokemon.where(name: pokemon_data['name'], attack: pokemon_data['attack'], defense: pokemon_data['defense'], pokemon_type:pokemon_data['type']).first_or_create
    end
  end
end
