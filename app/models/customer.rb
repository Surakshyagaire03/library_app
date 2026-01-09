# customer can rent many books
class Customer < ApplicationRecord
  has_many :rentals
  has_many :books, through: :rentals
end


