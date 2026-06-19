class CreatePlantBoards < ActiveRecord::Migration[7.2]
  def change
    create_table :plant_boards do |t|
      t.text :plant_name, null: false
      t.text :body, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
