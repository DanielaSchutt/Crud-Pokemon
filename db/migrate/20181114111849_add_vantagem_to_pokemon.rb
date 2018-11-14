class AddVantagemToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :vantagem, foreign_key: true
  end
end
