class Rental < ApplicationRecord
  # connect both book and customer
  belongs_to :customer
  belongs_to :book
end

