class Course < ApplicationRecord
  validates :title, :description, :duration, presence: true
  enum level: [ :beginner, :intermediate, :advanced, :all_levels ]
  has_many :bookings
  belongs_to :user
end
