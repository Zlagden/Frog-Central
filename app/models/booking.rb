class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :frog
  validates :start_date, :end_date, presence: true
end
