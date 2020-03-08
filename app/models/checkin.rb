class Checkin < ApplicationRecord
  validates :rating, :date, presence: true

  belongs_to :user
end
