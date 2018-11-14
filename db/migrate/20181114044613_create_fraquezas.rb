class CreateFraquezas < ActiveRecord::Migration[5.2]
  def change
    create_table :fraquezas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
