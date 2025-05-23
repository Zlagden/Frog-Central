# app/models/user.rb
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :frogs, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
