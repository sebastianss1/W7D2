# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Band.destroy_all

user1 = User.create!(email: "seb@gmail.com", password: "hello1234")

band1 = Band.create!(name: "The Rolling Stones")
band2 = Band.create!(name: "Joy Division")
band3 = Band.create!(name: "New Order")