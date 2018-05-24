# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.create(title: "First Project", status: "Approved")
Project.create(title: "Second Project", status: "Rejected")
Project.create(title: "Third Project", status: "Rework")
Project.create(title: "Fourth Project", status: "Approved")
puts "Projects created: #{Project.all.count}"

Chapter.create(name: "Canary Wharf", city: "London", country: "UK")
Chapter.create(name: "Richmond", city: "London", country: "UK")
Chapter.create(name: "Eiffel Tower", city: "Paris", country: "France")
Chapter.create(name: "An Area", city: "Manchester", country: "UK")
Chapter.create(name: "The Docks", city: "Bristol", country: "UK")
Chapter.create(name: "The Docks", city: "Los Angeles", country: "US")
puts "Chapters created: #{Chapter.all.count}"
