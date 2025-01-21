class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :courses
  # has_many :bookings, through: :courses
  has_many :bookings, dependent: :destroy
  has_many :courses, dependent: :destroy
  has_many :courses, through: :bookings, dependent: :destroy
end
