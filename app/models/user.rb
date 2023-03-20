class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :schedules
  has_many :plants, through: :schedules
end
