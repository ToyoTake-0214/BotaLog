class PlantBoard < ApplicationRecord
  validates :plant_name, presence: true, length: { maximum: 50 }
  validates :body, length: { maximum: 300 }

  mount_uploader :plant_board_image, PlantBoardImageUploader

  belongs_to :user
  has_many :plants, dependent: :destroy


  def next_watering_on
    return nil if last_watered_on.blank? || watering_interval_days.blank?

    last_watered_on + watering_interval_days
  end

  def watering_remaining_days
    return nil if next_watering_on.blank?

    (next_watering_on - Date.current).to_i
  end
end
