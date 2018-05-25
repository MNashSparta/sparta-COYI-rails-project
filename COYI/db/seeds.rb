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

#US Chapters
Chapter.create(name: "Default", city: "Default", country: "Default")
Chapter.create(name: "Los Angeles", city: "Los Angeles", country: "United States")
Chapter.create(name: "Chicago", city: "Chicago", country: "United States")
Chapter.create(name: "Toronto", city: "Toronto", country: "United States")
Chapter.create(name: "Washington DC", city: "Washington DC", country: "United States")
Chapter.create(name: "Pittsburgh", city: "Pittsburgh", country: "United States")
Chapter.create(name: "New York", city: "Los Angeles", country: "United States")
Chapter.create(name: "Boston", city: "Boston", country: "United States")
#EU Chapters
Chapter.create(name: "Stockholm", city: "Stockholm", country: "Sweden")
Chapter.create(name: "Dublin", city: "Dublin", country: "Ireland")
Chapter.create(name: "Birmingham", city: "Birmingham", country: "UK")
Chapter.create(name: "London", city: "London", country: "UK")
Chapter.create(name: "Amsterdam", city: "Amsterdam", country: "Neatherlands")
Chapter.create(name: "Brussels", city: "Brussels", country: "Belgium")
Chapter.create(name: "Paris", city: "Paris", country: "France")
Chapter.create(name: "Monaco", city: "Monaco", country: "Monaco")
#ETC Chapters
Chapter.create(name: "Casablanca", city: "Casablanca", country: "Morocco")
Chapter.create(name: "Santiago", city: "Santiago", country: "Chile")
Chapter.create(name: "Johannesburg", city: "Johannesburg", country: "South Africa")
Chapter.create(name: "Dubai", city: "Dubai", country: "UAE")
Chapter.create(name: "New Delhi", city: "New Delhi", country: "India")
Chapter.create(name: "Singapore", city: "Singapore", country: "Singapore")
Chapter.create(name: "Sydney", city: "Sydney", country: "Australia")

puts "Chapters created: #{Chapter.all.count}"
