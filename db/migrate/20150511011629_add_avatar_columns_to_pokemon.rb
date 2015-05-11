class AddAvatarColumnsToPokemon < ActiveRecord::Migration
  def self.up
    add_attachment :pokemons, :avatar
  end

  def self.down
    remove_attachment :pokemons, :avatar
  end
end
