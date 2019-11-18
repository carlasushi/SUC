# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Home.destroy_all
Room.destroy_all
Chore.destroy_all


puts "Create users"


oscar = User.create!(email: "oscar.hewitt.lindberg@gmail.com", password: "123456")

carla = User.create!(email: "learntoglow@gmail.com", password: "123456")

puts "Creating homes"

lewagon = Home.new(name: "Le Wagon", user: oscar)
smag = Home.new(name: "Smag", user: carla)

puts "create room"

Room.create!(name: "Bathroom", home: lewagon)
Room.create!(name: "Kitchen", home: lewagon)
Room.create!(name: "Livingroom", home: lewagon)

Room.create!(name: "Kitchen", home: smag)
Room.create!(name: "Bathroom", home: smag)
Room.create!(name: "Livingroom", home: smag)

