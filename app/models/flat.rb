# app/models/flat.rb
class Flat < ApplicationRecord
  belongs_to :user
  validates :name, :address, :price, presence: true
end
