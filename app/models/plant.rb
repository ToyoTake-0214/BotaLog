class Plant < ApplicationRecord
  validates :body, length: {maximum: 500}

  mount_uploader :plant_image, PlantImageUploader
  belongs_to :user
  belongs_to :plant_board
end
