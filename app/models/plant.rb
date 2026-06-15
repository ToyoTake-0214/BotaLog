class Plant < ApplicationRecord
  validates :body, length: {maiximum: 500}

  belong_to :user
  belong_to :plant_board
end
