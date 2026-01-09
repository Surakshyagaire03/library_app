# book can be rented many times
class Book < ApplicationRecord
  has_many :rentals
  has_many :customers, through: :rentals
end

