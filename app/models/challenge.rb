class Challenge < ApplicationRecord
  belongs_to :group
  has_many :trackers
  has_many :users, through: :trackers
end
