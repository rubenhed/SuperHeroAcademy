class Course < ApplicationRecord
  validates :title, :description, :duration, presence: true
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :favorites, dependent: :destroy
  enum level: [ :beginner, :intermediate, :advanced, :all_levels ]
  enum category: [ :physical_enhancement, :mental_willpower, :nature_manipulation ]
end
