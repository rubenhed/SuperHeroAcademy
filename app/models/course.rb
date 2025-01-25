class Course < ApplicationRecord
  attr_accessor :image_path

  validates :title, :description, :duration, presence: true
  enum level: [ :beginner, :intermediate, :advanced, :all_levels ]
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  belongs_to :user
end
