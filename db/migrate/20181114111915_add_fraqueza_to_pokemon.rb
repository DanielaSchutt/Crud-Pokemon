class AddFraquezaToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :fraqueza, foreign_key: true
  end
end
