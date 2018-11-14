class AddFase2ToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :fase2, foreign_key: true
  end
end
