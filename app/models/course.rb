class Course < ApplicationRecord
  validates :title, :description, :duration, presence: true
  enum level: [ :beginner, :intermediate, :advanced, :all_levels ]
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  belongs_to :user
  enum category: [ :physical_enhancement, :mental_willpower, :nature_manipulation ]
end
