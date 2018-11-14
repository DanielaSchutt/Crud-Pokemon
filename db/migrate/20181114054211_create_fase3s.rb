class CreateFase3s < ActiveRecord::Migration[5.2]
  def change
    create_table :fase3s do |t|
      t.string :nome

      t.timestamps
    end
  end
end
