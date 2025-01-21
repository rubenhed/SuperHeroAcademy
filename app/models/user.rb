class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :courses
  # has_many :bookings, through: :courses
  has_many :bookings
  has_many :courses
  has_many :bookings_as_student, through: :courses, source: :bookings
end
