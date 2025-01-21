# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing bookings..."
Booking.destroy_all

puts "Clearing courses..."
Course.destroy_all

puts "Clearing users..."
User.destroy_all

user1 = User.create!(email: "zzz@gmail.com", password: "123123", name: "Rayz")
puts "Creating user1..."
user2 = User.create!(email: "yzyz@gmail.com", password: "321321", name: "Amy")
puts "Creating user2..."
user3 = User.create!(email: "wwyy@gmail.com", password: "123321", name: "Ruben")
puts "Creating user3..."
course1 = Course.create!(title: "Flying", description: "Learn to fly without wings or machines, just by yourself", duration: 60, level: 0, user: user1)
puts "Creating course1..."
course2 = Course.create!(title: "Telekinesis", description: "Move objects with your mind", duration: 90, level: 0, user: user2)
puts "Creating course2..."
course3 = Course.create!(title: "Shape-shifting", description: "Change your appearance at will", duration: 120, level: 1, user: user3)
puts "Creating course3..."
course4 = Course.create!(title: "Imaginary Constructs", description: "Create objects out of your imagination", duration: 120, level: 1, user: user1)
course5 = Course.create!(title: "Healing Factor", description: "Heal yourself and others", duration: 60, level: 0, user: user2)
course6 = Course.create!(title: "Invisibility", description: "Become invisible", duration: 90, level: 1, user: user3)
course7 = Course.create!(title: "Super Strength", description: "Have a super strong and durable body, impervious to most injuries", duration: 90, level: 1, user: user1)
