class AddNumberColumnsToPokemons < ActiveRecord::Migration
  def self.up
    add_column :pokemons, :number, :integer
  end

  def self.down
    remove_column :pokemons, :number
  end
end
