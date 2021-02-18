class User < ApplicationRecord

  validates :player, presence: true, length: { maximum: 80 }
  validates :team, presence: true, length: { maximum: 80 }
  validates :points, presence: true
  validates :cost, presence: true
  validates :position, presence: true, length: { maximum: 15 }

end