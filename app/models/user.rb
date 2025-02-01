class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :courses
  # has_many :bookings, through: :courses
  has_many :bookings, dependent: :destroy
  has_many :courses, dependent: :destroy
  has_many :bookings_as_student, through: :courses, source: :bookings
  has_many :favorites, dependent: :destroy

  AVATAR_OPTIONS = %w[ avatar01.png avatar02.png avatar03.png avatar04.png avatar05.png avatar06.png avatar07.png avatar08.png avatar09.png avatar10.png avatar11.png avatar12.png avatar13.png avatar14.png avatar15.png avatar16.png avatar17.png avatar18.png avatar19.png avatar20.png avatar21.png avatar22.png avatar23.png avatar24.png avatar25.png avatar26.png avatar27.png avatar-default.png ]

  validates :avatar, inclusion: { in: AVATAR_OPTIONS, allow_nil: true }

  before_save :set_default_avatar

  private

  def set_default_avatar
    self.avatar ||= "avatar-default.png" # Assign default only if avatar is nil
  end
end
