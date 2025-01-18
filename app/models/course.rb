class Course < ApplicationRecord
  validates :title, :description, :duration, :level, presence: true
  enum level: [ :beginner, :intermediate, :advanced, :all_levels ]
  has_many :bookings
  belongs_to :user
end
