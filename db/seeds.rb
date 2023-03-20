# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(name: "Annie", email: "annie@email.com", password: "password", image_url: "test.jpg")

user2 = User.create!(name: "Patty", email: "patty@email.com", password: "password", image_url: "test.jpg")

plant1 = Plant.create!(name: "Monstera", description: "Monstera is a genus of 59 species of flowering plants in the arum family, Araceae, native to tropical regions of the Americas.", amount_of_sun: "bright indirect sunlight", days_to_water: "7", image_url: "http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRGNhfwW0OsamIZvrzUauT4T6tkaycXGgXtKmS3MPokIOUXjnA09t-VkmME5aZvV-ojdYN3ELtqjWghbYfUHYWFLugsqhZ05SqIvMmmktTR")

plant2 = Plant.create!(name: "Devils Ivy", description: "Epipremnum aureum is a species in the arum family Araceae, native to Mo'orea in the Society Islands of French Polynesia.", amount_of_sun: "bright indirect sunlight", days_to_water: "7", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZh5_gxS0qsnUIoIEtqJc__rbZcM4Wltk87FCbd-zaA0_EU31Qc6f5oOOD5nwpdI1KnGM&usqp=CAU")

Schedule.create!(plant_id: plant1.id, user_id: user1.id, image_url: "http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRGNhfwW0OsamIZvrzUauT4T6tkaycXGgXtKmS3MPokIOUXjnA09t-VkmME5aZvV-ojdYN3ELtqjWghbYfUHYWFLugsqhZ05SqIvMmmktTR", watering_start_date: Date.strptime("2023-03-20"))

Schedule.create!(plant_id: plant2.id, user_id: user2.id, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZh5_gxS0qsnUIoIEtqJc__rbZcM4Wltk87FCbd-zaA0_EU31Qc6f5oOOD5nwpdI1KnGM&usqp=CAU", watering_start_date: Date.strptime("2023-03-15"))
