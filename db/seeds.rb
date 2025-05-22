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
    user: user,
    photo_url: "https://images.unsplash.com/photo-1698435354321-0bccb1549b4d?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dHJlZSUyMGZyb2d8ZW58MHx8MHx8fDA%3D",
    description: "A small green frog with a loud croak. Loves to jump around and catch flies.",
  },
  {
    name: "Rupert",
    species: "Bullfrog",
    color: "Brown",
    age: 4,
    user: user,
    photo_url: "https://images.unsplash.com/photo-1499114794761-d2743d4eb6f2?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YnVsbGZyb2d8ZW58MHx8MHx8fDA%3D",
    description: "A large brown bullfrog with a deep croak. Enjoys sunbathing and swimming in ponds.",
  },
  {
    name: "Steven the Great",
    species: "Poison Dart Frog",
    color: "Blue and Black",
    age: 1,
    user: user,
    photo_url: "https://images.unsplash.com/photo-1696104724279-aa9a0286a3ae?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cG9pc29uJTIwZGFydCUyMGZyb2d8ZW58MHx8MHx8fDA%3D",
    description: "A small blue and black frog with a toxic skin. Prefers humid environments and loves to eat insects.",
  },
  {
    name: "Freddy",
    species: "Leopard Frog",
    color: "Green and Black",
    age: 3,
    user: user,
    photo_url: "https://images.unsplash.com/photo-1642279713764-42250d242a21?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGxlb3BhcmQlMjBmcm9nfGVufDB8fDB8fHww",
    description: "A medium-sized green and black frog with a spotted pattern. Enjoys hopping around in grassy areas.",
  },
  {
    name: "Lily",
    species: "Red-Eyed Tree Frog",
    color: "Green and Red",
    age: 2,
    user: user,
    photo_url: "https://images.unsplash.com/photo-1549776904-3ec1fcd4b13b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmVkJTIwZXllZCUyMHRyZWUlMjBmcm9nfGVufDB8fDB8fHww",
    description: "A small green frog with red eyes. Loves to climb trees and enjoys a humid environment.",
  },
  {
    name: "Bubbles",
    species: "African Clawed Frog",
    color: "Green",
    age: 5,
    user: user,
    photo_url: "https://images.unsplash.com/photo-1661512533245-9666ba8c507f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTEyfHxhZnJpY2FuJTIwY2xhd2VkJTIwZnJvZ3xlbnwwfHwwfHx8MA%3D%3D",
    description: "A large green frog with webbed feet. Enjoys swimming and is often found in ponds.",
  },
  {
    name: "Gizmo",
    species: "Budgett's Frog",
    color: "Brown",
    age: 3,
    user: user,
    photo_url: "https://plus.unsplash.com/premium_photo-1661842817526-106daafdc2c8?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YnVkZ2V0dHMlMjBmcm9nfGVufDB8fDB8fHww",
    description: "A unique brown frog with a flat body. Prefers to stay in water and is known for its unusual appearance.",
  },
  {
    name: "Kermit",
    species: "Green Frog",
    color: "Green",
    age: 4,
    user: user,
    photo_url: "https://images.unsplash.com/photo-1502780402662-acc01c084a25?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JlZW4lMjBmcm9nfGVufDB8fDB8fHww",
    description: "A common green frog with a loud croak. Enjoys sunbathing and catching insects.",
  },
  {
    name: "Jumpy",
    species: "Spring Peeper",
    color: "Brown",
    age: 1,
    user: user,
    photo_url: "https://plus.unsplash.com/premium_photo-1664303850271-dc4ca6f5a12c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3ByaW5nJTIwcGVlcGVyJTIwZnJvZ3xlbnwwfHwwfHx8MA%3D%3D",
    description: "A small brown frog with a high-pitched call. Loves to jump around in wet areas.",
  },
  {
    name: "Chomp",
    species: "South American Horned Frog",
    color: "Green and Yellow",
    age: 2,
    user: user,
    photo_url: "https://s3.animalia.bio/animals/photos/full/original/argentine-horned-frog-28ceratophrys-ornata29.webp",
    description: "A large green and yellow frog with a horned appearance. Known for its aggressive behavior and large appetite.",
  },
]

Frog.create!(frogs)

puts "✅ Frogs seeded successfully!#{Frog.count}"
