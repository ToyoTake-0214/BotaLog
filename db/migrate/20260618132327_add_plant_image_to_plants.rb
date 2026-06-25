class AddPlantImageToPlants < ActiveRecord::Migration[7.2]
  def change
    add_column :plants, :plant_image, :string
  end
end
