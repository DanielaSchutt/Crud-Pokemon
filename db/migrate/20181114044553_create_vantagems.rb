class CreateVantagems < ActiveRecord::Migration[5.2]
  def change
    create_table :vantagems do |t|
      t.string :nome

      t.timestamps
    end
  end
end
