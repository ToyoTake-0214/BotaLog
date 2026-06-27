class User < ApplicationRecord
  has_secure_password

  validates :user_name, presence: true, uniqueness: true, length: {maximum: 100}
  validates :password, presence:true, length: { minimum: 3 }, if: -> { new_record? || changes[:password_digest] }

  has_many :plant_boards, dependent: :destroy
  has_many :plants, dependent: :destroy

  def own?(object)
    id == object&.user_id
  end

end
