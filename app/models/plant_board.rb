class PlantBoard < ApplicationRecord
  validates :plant_name, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 300 }

  mount_uploader :plant_board_image, PlantBoardImageUploader

  belongs_to :user
  has_many :plants, dependent: :destroy
end
