class AddFase3ToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :fase3, foreign_key: true
  end
end
