class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :pokemon_type, :attack
end
