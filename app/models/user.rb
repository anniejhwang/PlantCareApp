class User < ApplicationRecord
  has_many :schedules
  has_many :plants, through: :schedules
end
