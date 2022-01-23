# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(image_url: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png", email: "guest2022@gmail.com", username:"guest_2022", bio: "I am a guest", password: "123" )

some_date = 4.days.ago
event = Event.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSXhVFCmtd4U-v92UR7hwq1wHCvh2SiTg_Kw&usqp=CAU", description: "Come out to the party on Saturday...", user_id: user.id, date: some_date )