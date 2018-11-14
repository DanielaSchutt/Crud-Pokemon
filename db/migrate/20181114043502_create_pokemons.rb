class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :nome
      t.float :peso
      t.float :altura

      t.timestamps
    end
  end
end
