class Booking < ApplicationRecord
  enum status: [:pending, :rejected, :accepted ]
  belongs_to :user
  belongs_to :course
end
