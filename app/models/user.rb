class User < ApplicationRecord
  validates :username, :email, presence: true

  has_many :checkins, dependent: :destroy
end
