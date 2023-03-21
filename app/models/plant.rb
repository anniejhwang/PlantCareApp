class Plant < ApplicationRecord
  belongs_to :schedule
  has_many :users, through: :schedules
end
