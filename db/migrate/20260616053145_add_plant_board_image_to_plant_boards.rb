class AddPlantBoardImageToPlantBoards < ActiveRecord::Migration[7.2]
  def change
    add_column :plant_boards, :plant_board_image, :string
  end
end
