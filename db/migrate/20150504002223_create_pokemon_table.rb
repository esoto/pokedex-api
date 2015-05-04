class CreatePokemonTable < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :attack
      t.integer :defense
      t.string :pokemon_type

      t.timestamps
    end
  end
end
