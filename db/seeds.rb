# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.destroy_all
Chore.destroy_all
Room.destroy_all
Home.destroy_all
User.destroy_all



puts "Create users"

oscar = User.create!(email: "oscar.hewitt.lindberg@gmail.com", password: "123456")

carla = User.create!(email: "learntoglow@gmail.com", password: "123456")

user1 = User.create!(email: Faker::Internet.email, password: "123456")

user2 = User.create!(email: Faker::Internet.email, password: "123456")


puts "Creating homes"

lewagon = Home.new(name: "Le Wagon", user: oscar)
lewagon.user = oscar
lewagon.save!

smag = Home.new(name: "Smag", user: carla)
smag.user = carla
smag.save!


puts "create room"

bathroom = Room.new(name: "Bathroom")
bathroom.home = lewagon
bathroom.save!

kitchen = Room.new(name: "Kitchen")
kitchen.home = lewagon
kitchen.save!

livingroom =  Room.new(name: "Livingroom")
livingroom.home = lewagon
livingroom.save!

kitchen1 = Room.new(name: "Kitchen")
kitchen1.home = smag
kitchen1.save!

bathroom1 = Room.new(name: "Bathroom")
bathroom1.home = smag
bathroom1.save!

livingroom1 = Room.new(name: "Livingroom")
livingroom1.home = smag
livingroom1.save!


puts "create roles"

admin = Role.new(category: "admin")
admin.home = lewagon
admin.user = oscar
admin.save!

flatmate = Role.new(category: "user")
flatmate.home = lewagon
flatmate.user = user1
flatmate.save!

admin2 = Role.new(category: "admin")
admin2.home = smag
admin2.user = carla
admin2.save!

puts "create chores"

Chore.create!(name: "Dishes", due_date: Date.today + 3, done_date: Date.today + 4, done: false, description: "Please take out the dishes", room: kitchen, user: user1)
Chore.create!(name: "Vaccum", due_date: Date.today + 1, done_date: Date.today + 2, done: false, description: "Vaccum under the sofa", room: livingroom, user: user1)
Chore.create!(name: "Toilet", due_date: Date.today + 4, done_date: Date.today + 5, done: false, description: "Make sure that the toilet is shining", room: bathroom, user: oscar)

Chore.create!(name: "Shower", due_date: Date.today + 3, done_date: Date.today + 4, done: false, description: "Clean the showerhead", room: bathroom1, user: user2)
Chore.create!(name: "Coffeemachine", due_date: Date.today, done_date: Date.today + 3, done: false, description: "Clean the coffeemachine", room: kitchen1, user: user2)
Chore.create!(name: "Pillows", due_date: Date.today + 3, done_date: Date.today  + 4, done: false, description: "Wash the pillowcases in the sofa", room: livingroom1, user: carla)


puts "Finishing up"
