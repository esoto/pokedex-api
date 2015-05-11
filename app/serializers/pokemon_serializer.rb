class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :pokemon_type, :attack, :avatar_medium, :avatar_thumb

  def avatar_medium
    object.avatar.url(:medium)
  end

  def avatar_thumb
    object.avatar.url(:thumb)
  end
end
