class PlantBoard < ApplicationRecord
  validates :plant_name, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 300 }

  belongs_to :user
  has_many :plants, dependent: :destroy
end
