require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Item.destroy_all
User.destroy_all

user1 = User.new(email: "user1@gmx.de", password: "123456") # We need different users for testing
user1.photo.attach(io: File.open("app/assets/images/user1_avatar.png"), filename: "user1_avatar.png", content_type: "image/png")
user1.save!

user2 = User.new(email: "user2@gmx.de", password: "123456") # We need different users for testing
user2.photo.attach(io: File.open("app/assets/images/user2_avatar.png"), filename: "user2_avatar.png", content_type: "image/png")
user2.save!

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855932/01_sofas/01_Sofas_09_Ericson_LS_1000px_dgsvz9.png")
item = Item.new(name: "01 Sofas Ericson", category: "Sofas")
item.photo.attach(io: file, filename: "01_Sofas_09_Ericson_LS_1000px_dgsvz9.png", content_type: "image/png")
item.save


# In your moodboards controller, new action:
# @random_sofa_item = Item.where(category: "sofa").sample
