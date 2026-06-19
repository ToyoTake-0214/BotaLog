class CreatePlants < ActiveRecord::Migration[7.2]
  def change
    create_table :plants do |t|
      t.references :user, foreign_key: true
      t.references :plant_board, foreign_key: true

      t.text :body

      t.timestamps
    end
  end
end
