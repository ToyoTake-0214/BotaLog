class ChangeBodyNullOnPlantBoards < ActiveRecord::Migration[7.2]
  def change
    change_column_null :plant_boards, :body, true
  end
end
