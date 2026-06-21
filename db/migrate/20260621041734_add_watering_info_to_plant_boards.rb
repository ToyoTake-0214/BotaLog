class AddWateringInfoToPlantBoards < ActiveRecord::Migration[7.2]
  def change
    add_column :plant_boards, :watering_interval_days, :integer
    add_column :plant_boards, :last_watered_on, :date
  end
end
