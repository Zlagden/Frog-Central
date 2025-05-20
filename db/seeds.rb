# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Frog.destroy_all
User.destroy_all

puts "Creating a user..."
user = User.create!(
  email: "froglover@example.com",
  password: "password"
)

puts "Creating frogs..."
frogs = [
  {
    name: "Hoppy",
    species: "Tree Frog",
    color: "Green",
    age: 2,
    user: user
  },
  {
    name: "Splash",
    species: "Bullfrog",
    color: "Brown",
    age: 4,
    user: user
  },
  {
    name: "Dart",
    species: "Poison Dart Frog",
    color: "Blue and Black",
    age: 1,
    user: user
  }
]

Frog.create!(frogs)

puts "✅ Frogs seeded successfully!"
