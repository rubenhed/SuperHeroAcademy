# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# create a course
# Create a course associated with user_id: 1
Course.create!(
  title: "Ruby on Rails Mastery",
  description: "This course will teach you how to build full-stack web applications with Ruby on Rails. You'll learn how to structure a Rails application, use Active Record, and deploy your app. Perfect for beginners and intermediate developers!",
  duration: 8, # Duration in hours/days (based on your application logic)
  level: 2, # Assuming level ranges from beginner (1) to advanced (5)
  price: 120, # Price in your preferred currency
  location: "Online",
  online: true,
  start_time: "2025-02-01 10:00:00",
  user_id: 1 # Associate the course with the existing user
)
