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

puts "Creating two users....."

user1 = User.new(email: "user1@gmx.de", password: "123456", username: "User1") # We need different users for testing
user1.photo.attach(io: File.open("app/assets/images/user1_avatar.png"), filename: "user1_avatar.png", content_type: "image/png")
user1.save!

user2 = User.new(email: "user2@gmx.de", password: "123456", username: "User2") # We need different users for testing
user2.photo.attach(io: File.open("app/assets/images/user2_avatar.png"), filename: "user2_avatar.png", content_type: "image/png")
user2.save!



puts "Creating Sofas..."

# SOFAS

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855932/01_sofas/01_Sofas_09_Ericson_LS_1000px_dgsvz9.png")
item = Item.new(name: "01 Sofa Ericson", category: "Sofas")
item.photo.attach(io: file, filename: "01_Sofas_09_Ericson_LS_1000px_dgsvz9.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855932/01_sofas/01_Sofas_10_Andre_LS_1000px_aefimr.png")
item = Item.new(name: "01 Sofa Andre", category: "Sofas")
item.photo.attach(io: file, filename: "01_Sofas_10_Andre_LS_1000px_aefimr.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855931/01_sofas/01_Sofas_08_Tegan_LS_1000px_ozucuv.png")
item = Item.new(name: "01 Sofa Tegan", category: "Sofas")
item.photo.attach(io: file, filename: "01_Sofas_08_Tegan_LS_1000px_ozucuv.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855931/01_sofas/01_Sofas_07_Gio_LS_1000px_jhtytv.png")
item = Item.new(name: "01 Sofa Gio", category: "Sofas")
item.photo.attach(io: file, filename: "01_Sofas_07_Gio_LS_1000px_jhtytv.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855931/01_sofas/01_Sofas_04_Sterling_LS_1000px_rij8hm.png")
item = Item.new(name: "01 Sofa Sterling", category: "Sofas")
item.photo.attach(io: file, filename: "01_Sofas_04_Sterling_LS_1000px_rij8hm.png", content_type: "image/png")
item.save


puts "Creating Chairs..."

# CHAIRS

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855969/02_chairs/02_Chairs_06_Silva_LS_1000px_x9op9j.png")
item = Item.new(name: "02 Chair Silva", category: "Chairs")
item.photo.attach(io: file, filename: "02_Chairs_06_Silva_LS_1000px_x9op9j.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855968/02_chairs/02_Chairs_07_Jasper_LS_1000px_a4ulma.png")
item = Item.new(name: "02 Chair Jasper", category: "Chairs")
item.photo.attach(io: file, filename: "02_Chairs_07_Jasper_LS_1000px_a4ulma.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855965/02_chairs/02_Chairs_03_Boden_LS_1000px_bhfnrv.png")
item = Item.new(name: "02 Chair Boden", category: "Chairs")
item.photo.attach(io: file, filename: "02_Chairs_03_Boden_LS_1000px_bhfnrv.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855965/02_chairs/02_Chairs_10_Matteo_LS_1000px_lbkihu.png")
item = Item.new(name: "02 Chair Matteo", category: "Chairs")
item.photo.attach(io: file, filename: "02_Chairs_10_Matteo_LS_1000px_lbkihu.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855965/02_chairs/02_Chairs_05_Quinn_LS_1000px_ysmjjm.png")
item = Item.new(name: "02 Chair Quinn", category: "Chairs")
item.photo.attach(io: file, filename: "02_Chairs_05_Quinn_LS_1000px_ysmjjm.png", content_type: "image/png")
item.save

puts "Creating Rugs..."

# RUGS

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855999/03_rugs/03_Rugs_04_Kayser_LS_1000px_u7ncu3.png")
item = Item.new(name: "02 Rug Kayser", category: "Rugs")
item.photo.attach(io: file, filename: "03_Rugs_04_Kayser_LS_1000px_u7ncu3.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855996/03_rugs/03_Rugs_06_Tova_LS_1000px_iwgusg.png")
item = Item.new(name: "02 Rug Tova", category: "Rugs")
item.photo.attach(io: file, filename: "03_Rugs_06_Tova_LS_1000px_iwgusg.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855995/03_rugs/03_Rugs_05_Amira_LS_1000px_ipla5o.png")
item = Item.new(name: "02 Rug Amira", category: "Rugs")
item.photo.attach(io: file, filename: "05_Amira_LS_1000px_ipla5o.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855995/03_rugs/03_Rugs_09_Ona_LS_1000px_k3vwsc.png")
item = Item.new(name: "02 Rug Ona", category: "Rugs")
item.photo.attach(io: file, filename: "03_Rugs_09_Ona_LS_1000px_k3vwsc.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661855995/03_rugs/03_Rugs_10_Luco_LS_1000px_sytugj.png")
item = Item.new(name: "02 Rug Luco", category: "Rugs")
item.photo.attach(io: file, filename: "03_Rugs_10_Luco_LS_1000px_sytugj.png", content_type: "image/png")
item.save

puts "Creating Coffee Tables..."

# COFFEE TABLES

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856023/04_coffee_tables/04_Coffee-Tables_05_Cow_Hide_LS_1000px_gyo62y.png")
item = Item.new(name: "02 Coffee Table Cow", category: "Coffee Tables")
item.photo.attach(io: file, filename: "04_Coffee-Tables_05_Cow_Hide_LS_1000px_gyo62y.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856023/04_coffee_tables/04_Coffee-Tables_03_Liam_LS_1000px_nntpo5.png")
item = Item.new(name: "02 Coffee Table Liam", category: "Coffee Tables")
item.photo.attach(io: file, filename: "04_Coffee-Tables_03_Liam_LS_1000px_nntpo5.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856023/04_coffee_tables/04_Coffee-Tables_06_Gibson_LS_1000px_iqcgun.png")
item = Item.new(name: "02 Coffee Table Gibson", category: "Coffee Tables")
item.photo.attach(io: file, filename: "04_Coffee-Tables_06_Gibson_LS_1000px_iqcgun.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856023/04_coffee_tables/04_Coffee-Tables_07_Williams_LS_1000px_uwz2vo.png")
item = Item.new(name: "02 Coffee Table Williams", category: "Coffee Tables")
item.photo.attach(io: file, filename: "04_Coffee-Tables_07_Williams_LS_1000px_uwz2vo.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856023/04_coffee_tables/04_Coffee-Tables_10-Kavala_LS_1000px_lvbtv4.png")
item = Item.new(name: "02 Coffee Table Kavala", category: "Coffee Tables")
item.photo.attach(io: file, filename: "04_Coffee-Tables_10-Kavala_LS_1000px_lvbtv4.png", content_type: "image/png")
item.save

puts "Creating Lights..."

# LIGHTS

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856046/05_lights/05_Lights_11_Orikata_LS_1000px_rutmk0.png")
item = Item.new(name: "02 Light Orikata", category: "Lights")
item.photo.attach(io: file, filename: "05_Lights_11_Orikata_LS_1000px_rutmk0.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856045/05_lights/05_Lights_08_Fairbanks_LS_1000px_f5vgg2.png")
item = Item.new(name: "02 Light Fairbanks", category: "Lights")
item.photo.attach(io: file, filename: "05_Lights_08_Fairbanks_LS_1000px_f5vgg2.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856045/05_lights/05_Lights_04_Cloak_LS_1000px_apcoai.png")
item = Item.new(name: "02 Light Cloak", category: "Lights")
item.photo.attach(io: file, filename: "05_Lights_04_Cloak_LS_1000px_apcoai.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856044/05_lights/05_Lights_10_Lane_LS_1000px_pz4iqq.png")
item = Item.new(name: "02 Light Lane", category: "Lights")
item.photo.attach(io: file, filename: "05_Lights_10_Lane_LS_1000px_pz4iqq.png", content_type: "image/png")
item.save

file = URI.open("https://res.cloudinary.com/dbxebmzku/image/upload/v1661856044/05_lights/05_Lights_03_Cedric_LS_1000px_cz9eof.png")
item = Item.new(name: "02 Light Cedric", category: "Lights")
item.photo.attach(io: file, filename: "05_Lights_03_Cedric_LS_1000px_cz9eof.png", content_type: "image/png")
item.save

# In your moodboards controller, new action:
# @random_sofa_item = Item.where(category: "sofa").sample
