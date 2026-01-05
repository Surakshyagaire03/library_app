# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Book.create(title: "The Power of Positive Thinking", author: "Norman Vincent Peale", rating: 5)
Book.create(title: "Think and Grow Rich", author: "Napoleon Hill", rating: 5)
Book.create(title: "Atomic Habits", author: "James Clear", rating: 5)
Book.create(title: "The 7 Habits of Highly Effective People", author: "Stephen R. Covey", rating: 5)
Book.create(title: "Mindset", author: "Carol S. Dweck", rating: 4)
