Booking.destroy_all
Treatment.destroy_all
Provider.destroy_all
User.destroy_all
Photo.destroy_all

puts "✏️ creating description lorem ✏️"
description_lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam facilis dolore quibusdam! Consectetur nam distinctio, tenetur cupiditate quas quasi tempora odit explicabo architecto officia cumque dolores, dicta tempore, eligendi voluptatum ab deleniti corrupti reiciendis ex fugit modi. Porro, quas architecto."
puts "📝✅ lorem created ✅📝"
puts "🧼 cleaning the database... 🧼"
puts "✨ database clean ✨, 🌱 starting seed! 🌱"

puts "Creating Users"
user1 = User.create!(first_name: "Jacob", last_name: "Morton", email: "Jacob@gmail.com", password: "123456", avatar: "https://i.imgur.com/hTnKsgG.png", phone_number: "+34646850358")
# user1.save!
puts "User 1 - Seeded ✅"
user2 = User.create!(first_name: "Adam", last_name: "McCallister", email: "Adam@gmail.com", password: "123456", avatar: "https://i.imgur.com/5FXWDB5.jpg", phone_number: "+34646850358")
# user2.save!
puts "User 2 - Seeded ✅"
user3 = User.create!(first_name: "Alicia", last_name: "Ngomo", email: "Alicia@gmail.com", password: "123456", avatar: "https://i.imgur.com/NgTBg7y.jpg", phone_number: "+34646850358")
# user3.save!
puts "User 3 - Seeded ✅"
user4 = User.create!(first_name: "Jon", last_name: "Doe", email: "Jon@gmail.com", password: "123456", avatar: "https://i.imgur.com/pQRW7MK.jpg", phone_number: "+34646850358")
user4.save!
puts "User 4 - Seeded ✅"
user5 = User.create!(first_name: "Sam", last_name: "Barrett", email: "Sam@gmail.com", password: "123456", avatar: "https://i.imgur.com/jLJpsR6.jpg", phone_number: "+34646850358")
# user5.save!
puts "User 5 - Seeded ✅"
user6 = User.create!(first_name: "Kyle", last_name: "Aaron", email: "Kyle@gmail.com", password: "123456", avatar: "https://i.imgur.com/xGfUUt9.jpg", phone_number: "+34646850358")
user6.save!
puts "User 6 - Seeded ✅"
user7 = User.create!(first_name: "Kate", last_name: "Roberts", email: "Kate@gmail.com", password: "123456", avatar: "https://i.imgur.com/nwvVECy.jpg", phone_number: "+34646850358")
user7.save!
puts "User 7 - Seeded ✅"
user8 = User.create!(first_name: "Kathy", last_name: "Crow", email: "Kathy@gmail.com", password: "123456", avatar: "https://i.imgur.com/Uo9rgPO.jpg", phone_number: "+34646850358")
user8.save!
puts "User 8 - Seeded ✅"
user9 = User.create!(first_name: "Ashley", last_name: "Green", email: "Ashley@gmail.com", password: "123456", avatar: "https://i.imgur.com/Uo9rgPO.jpg", phone_number: "+34646850358")
user9.save!
puts "User 9 - Seeded ✅"
puts "All Users seeded ✅"





puts "Creating Providers"
provider1 = Provider.create!(location: " Calle de las Infantas, 8, 28004 Madrid",
  photo: "",
  description: "Great tattoos in Madrid. #{description_lorem}",
  statement: "100 percent satisfaction, guaranteed!",
  rating: 5,
  phone_number: "+34646850358",
  user: user1)
# provider1.save!
puts "Provider 1 Seeded ✅"

provider2 = Provider.create!(location: "Calle del Barquillo, 39, 28004 Madrid",
  photo: "",
  description: "Great nail tech in Madrid. #{description_lorem}",
  statement: "True art, right on your nails!",
  rating: 4,
  phone_number: "+34646850358",
  user: user2)
# provider2.save!
puts "Provider 2 Seeded ✅"

provider3 = Provider.create!(location: "Calle de Valverde, 44, 28004 Madrid",
  photo: "",
  description: "Great hair stylist in Madrid. #{description_lorem}",
  statement: "I do hair, with love and care!",
  rating: 3,
  phone_number: "+34646850358",
  user: user3)
# provider3.save!
puts "Provider 3 Seeded ✅"

provider4 = Provider.create!(location: "Calle San Gregorio, 5, 28004 Madrid",
  photo: "",
  description: "Perfect looking natural makeup! #{description_lorem}",
  statement: "I will help you look your BEST :)",
  rating: 5,
  phone_number: "+34646850358",
  user: user8)
provider4.save!
puts "Provider 4 Seeded ✅"

provider5 = Provider.create!(location: "Junto al hotel Me de la, Plaza del Ángel, Plaza de Sta. Ana, 6, 28012 Madrid",
  photo: "",
  description: "Studied physical training at oxford, I'm the best! #{description_lorem}",
  statement: "Get the body you DESERVE!",
  rating: 2,
  phone_number: "+34646850358",
  user: user6)
provider5.save!
puts "Provider 5 Seeded ✅"

provider6 = Provider.create!(location: "Calle Barquillo 39, 28004, Madrid",
  photo: "",
  description: "Hair is my passion! #{description_lorem}",
  statement: "Youre in great hands with me!!",
  rating: 2,
  phone_number: "+34646850358",
  user: user9)
provider6.save!
puts "Provider 6 Seeded ✅"
puts "All Providers Seeded ✅"


puts "💆‍♀️ 💅🏽 💆‍♂️ Creating Treatments 💆‍♂️ 💅🏽 💆‍♀️"
treatment1 = Treatment.create!(name: "Black Tattoo",
  description: "Pricing starts at 50 Euros for small tattoo in black. Feel free to contact me for more details on design and pricing! ;)",
  provider: provider1,
  price: 50,
  category: "Tattoo")
puts "Treatment 1 Seeded ✅"

treatment2 = Treatment.create!(name: "White Tattoo",
  description: "Pricing starts at 50 Euros for small tattoo in white. Feel free to contact me for more details on design and pricing! ;)",
  provider: provider1,
  price: 80,
  category: "tattoo")
puts "Treatment 2 Seeded ✅"

treatment3 = Treatment.create!(name: "Color Tattoo",
  description: "Pricing starts at 50 Euros for small tattoo in any color ink. Feel free to contact me for more details on design and pricing! ;)",
  provider: provider1,
  price: 50,
  category: "tattoo")
puts "Treatment 3 Seeded ✅"

treatment4 = Treatment.create!(name: "Gel Mani",
  description: "Gel manicures last much longer! Keep that beautiful color!",
  provider: provider2,
  price: 30,
  category: "Nails")
puts "Treatment 4 Seeded! ✅"

treatment5 = Treatment.create!(name: "Gel Pedi",
  description: "Keep those piggies on fleek!",
  provider: provider2,
  price: 50,
  category: "Nails")
puts "Treatment 5 Seeded! ✅"

treatment6 = Treatment.create!(name: "Nail art Mani",
  description: "Any custom design for your hands!",
  provider: provider2,
  price: 40,
  category: "Nails")
puts "Treatment 6 Seeded! ✅"

treatment7 = Treatment.create!(name: "Nail art Pedi",
  description: "any custom design for your toes!",
  provider: provider2,
  price: 60,
  category: "Nails")
puts "Treatment 7 Seeded! ✅"

treatment8 = Treatment.create!(name: "French tip Mani",
  description: "Beautiful, classic, and CHIC!",
  provider: provider2,
  price: 55,
  category: "Nails")
puts "Treatment 8 Seeded! ✅"

treatment9 = Treatment.create!(name: "Blowout",
  description: "Beautiful, classic",
  provider: provider3,
  price: 50,
  category: "Hair")
puts "Treatment 9 Seeded! ✅"

treatment10 = Treatment.create!(name: "Color",
  description: "Achieve the beautiful color you want!",
  provider: provider3,
  price: 300,
  category: "Hair")
puts "Treatment 10 Seeded! ✅"

treatment11 = Treatment.create!(name: "Cut",
  description: "Change things up with a nice new cut!",
  provider: provider3,
  price: 100,
  category: "Hair")
puts "Treatment 11 Seeded! ✅"

treatment12 = Treatment.create!(name: "Natural Look Makeup",
  description: "Achieve that flawless natural look!",
  provider: provider4,
  price: 150,
  category: "Makeup")
puts "Treatment 12 Seeded! ✅"

treatment13 = Treatment.create!(name: "Red Carpet Makeup",
  description: "Red Carpet Ready!!",
  provider: provider4,
  price: 250,
  category: "Makeup")
puts "Treatment 13 Seeded! ✅"

treatment14 = Treatment.create!(name: "1 hour full-body",
  description: "A full-body workout you're sure to see results from!",
  provider: provider5,
  price: 80,
  category: "Fitness")
puts "Treatment 14 Seeded! ✅"

treatment15 = Treatment.create!(name: "Up-do",
  description: "Impress with my famous up-do hair style",
  provider: provider6,
  price: 100,
  category: "Hair")
puts "Treatment 15 Seeded! ✅"
puts "All Treatments Seeded ✅"




puts "📚 📖 Creating Bookings 📖 📚"
booking1 = Booking.create!(user: user5,
  treatment: treatment1,
  price: 50,
  date: "2019-09-09",
  status: 1)
puts "Booking 1 Seeded ✅"

booking2 = Booking.create!(user: user4,
  treatment: treatment3,
  price: 50,
  date: "2019-10-09",
  status: 0)
puts "Booking 2 Seeded ✅"

booking3 = Booking.create!(user: user4,
  treatment: treatment2,
  price: 80,
  date: "2019-11-09",
  status: 2)
puts "Booking 3 Seeded ✅"

booking4 = Booking.create!(user: user3,
  treatment: treatment7,
  price: 60,
  date: "2019-10-10",
  status: 1)
puts "Booking 4 Seeded ✅"

booking5 = Booking.create!(user: user3,
  treatment: treatment8,
  price: 55,
  date: "2019-10-11",
  status: 1)
puts "Booking 5 Seeded ✅"

booking6 = Booking.create!(user: user5,
  treatment: treatment5,
  price: 50,
  date: "2019-10-12",
  status: 0)
puts "Booking 6 Seeded ✅"

booking7 = Booking.create!(user: user4,
  treatment: treatment8,
  price: 55,
  date: "2019-07-11",
  status: 2)
puts "Booking 7 Seeded ✅"

booking8 = Booking.create!(user: user1,
  treatment: treatment4,
  price: 30,
  date: "2019-07-14",
  status: 1)
puts "Booking 8 Seeded ✅"

booking9 = Booking.create!(user: user1,
  treatment: treatment5,
  price: 50,
  date: "2019-07-14",
  status: 2)
puts "Booking 9 Seeded ✅"

booking10 = Booking.create!(user: user1,
  treatment: treatment10,
  price: 300,
  date: "2019-07-29",
  status: 1)
puts "Booking 10 Seeded ✅"

booking11 = Booking.create!(user: user2,
  treatment: treatment11,
  price: 100,
  date: "2019-07-29",
  status: 2)
puts "Booking 11 Seeded ✅"

booking12 = Booking.create!(user: user4,
  treatment: treatment9,
  price: 50,
  date: "2019-09-15",
  status: 0)
puts "Booking 12 Seeded ✅"

booking13 = Booking.create!(user: user5,
  treatment: treatment12,
  price: 150,
  date: "2019-08-15",
  status: 1)
puts "Booking 13 Seeded ✅"

booking14 = Booking.create!(user: user2,
  treatment: treatment13,
  price: 250,
  date: "2019-08-03",
  status: 1)
puts "Booking 13 Seeded ✅"

booking15 = Booking.create!(user: user1,
  treatment: treatment14,
  price: 80,
  date: "2019-08-02",
  status: 1)
puts "Booking 15 Seeded ✅"

booking16 = Booking.create!(user: user5,
  treatment: treatment14,
  price: 80,
  date: "2019-08-01",
  status: 1)
puts "Booking 16 Seeded ✅"

booking17 = Booking.create!(user: user2,
  treatment: treatment14,
  price: 80,
  date: "2019-08-03",
  status: 3)
puts "Booking 17 Seeded ✅"

booking18 = Booking.create!(user: user4,
  treatment: treatment14,
  price: 80,
  date: "2019-07-28",
  status: 1)
puts "Booking 18 Seeded ✅"
puts "All Bookings Seeded ✅"

puts "📸 📷 Creating Images 📷 📸"

puts "Seeding Images for Provider 1"
# Images for Tattoo
photo1 = Photo.new(provider: provider1)
photo1.remote_data_url = "https://imgur.com/5uC5QAT"
photo1.save
puts "Image 1 Seeded ✅"

photo2 = Photo.new(provider: provider1)
photo2.remote_data_url = "https://imgur.com/8iSZt4v"
photo2.save
puts "Image 2 Seeded ✅"

photo3 = Photo.new(provider: provider1)
photo3.remote_data_url = "https://imgur.com/ILd7IOu"
photo3.save
puts "Image 3 Seeded ✅"

photo4 = Photo.new(provider: provider1)
photo4.remote_data_url = "https://imgur.com/aBpbLTK"
photo4.save
puts "Image 4 Seeded ✅"

photo5 = Photo.new(provider: provider1)
photo5.remote_data_url = "https://imgur.com/S1ccCNy"
photo5.save
puts "Image 5 Seeded ✅"

photo6 = Photo.new(provider: provider1)
photo6.remote_data_url = "https://imgur.com/Sxz4ymK"
photo6.save
puts "Image 6 Seeded ✅"

photo7 = Photo.new(provider: provider1)
photo7.remote_data_url = "https://imgur.com/Xl8G0wB"
photo7.save
puts "Image 7 Seeded ✅"

puts "Seeding Images for Provider 2"
# Images for Nails
photo8 = Photo.new(provider: provider2)
photo8.remote_data_url = "https://imgur.com/FTifUE8"
photo8.save
puts "Image 8 Seeded ✅"

photo9 = Photo.new(provider: provider2)
photo9.remote_data_url = "https://imgur.com/6fOppMR"
photo9.save
puts "Image 9 Seeded ✅"

photo10 = Photo.new(provider: provider2)
photo10.remote_data_url = "https://imgur.com/1RGeAW7"
photo10.save
puts "Image 10 Seeded ✅"

photo11 = Photo.new(provider: provider2)
photo11.remote_data_url = "https://imgur.com/JEgxi8k"
photo11.save
puts "Image 11 Seeded ✅"

photo12 = Photo.new(provider: provider2)
photo12.remote_data_url = "https://imgur.com/5AkgRHR"
photo12.save
puts "Image 12 Seeded ✅"

photo13 = Photo.new(provider: provider2)
photo13.remote_data_url = "https://imgur.com/AkLE0XC"
photo13.save
puts "Image 13 Seeded ✅"

photo14 = Photo.new(provider: provider2)
photo14.remote_data_url = "https://imgur.com/Bg2bc89"
photo14.save
puts "Image 14 Seeded ✅"

puts "Seeding Images for Provider 3"
# Images for Hair
photo15 = Photo.new(provider: provider3)
photo15.remote_data_url = "https://imgur.com/8K5ta7H"
photo15.save
puts "Image 15 Seeded ✅"

photo16 = Photo.new(provider: provider3)
photo16.remote_data_url = "https://imgur.com/rVfm54U"
photo16.save
puts "Image 16 Seeded ✅"

photo17 = Photo.new(provider: provider3)
photo17.remote_data_url = "https://imgur.com/NzarkAC"
photo17.save
puts "Image 17 Seeded ✅"

photo18 = Photo.new(provider: provider3)
photo18.remote_data_url = "https://imgur.com/6BFxb9u"
photo18.save
puts "Image 18 Seeded ✅"

photo19 = Photo.new(provider: provider3)
photo19.remote_data_url = "https://imgur.com/lEKwaD3"
photo19.save
puts "Image 19 Seeded ✅"

photo20 = Photo.new(provider: provider3)
photo20.remote_data_url = "https://imgur.com/1t7Nnnb"
photo20.save
puts "Image 20 Seeded ✅"

photo21 = Photo.new(provider: provider3)
photo21.remote_data_url = "https://imgur.com/zRdsvV9"
photo21.save
puts "Image 21 Seeded ✅"

puts "Seeding Images for Provider 4"
# Images for Makeup
photo22 = Photo.new(provider: provider4)
photo22.remote_data_url = "https://imgur.com/bPwIctU"
photo22.save
puts "Image 22 Seeded ✅"

photo23 = Photo.new(provider: provider4)
photo23.remote_data_url = "https://imgur.com/Eh8jrGI"
photo23.save
puts "Image 23 Seeded ✅"

photo24 = Photo.new(provider: provider4)
photo24.remote_data_url = "https://imgur.com/zcASozy"
photo24.save
puts "Image 24 Seeded ✅"

photo25 = Photo.new(provider: provider4)
photo25.remote_data_url = "https://imgur.com/quiVc8V"
photo25.save
puts "Image 25 Seeded ✅"

photo26 = Photo.new(provider: provider4)
photo26.remote_data_url = "https://imgur.com/14RFWdR"
photo26.save
puts "Image 26 Seeded ✅"

photo27 = Photo.new(provider: provider4)
photo27.remote_data_url = "https://imgur.com/gOetNk4"
photo27.save
puts "Image 27 Seeded ✅"

photo28 = Photo.new(provider: provider4)
photo28.remote_data_url = "https://imgur.com/F7GG60S"
photo28.save
puts "Image 28 Seeded ✅"

puts "Seeding Images for Provider 5"
# Images for Personal Training
photo29 = Photo.new(provider: provider5)
photo29.remote_data_url = "https://imgur.com/dJoXaqR"
photo29.save
puts "Image 29 Seeded ✅"

photo30 = Photo.new(provider: provider5)
photo30.remote_data_url = "https://imgur.com/VR2GsHu"
photo30.save
puts "Image 30 Seeded ✅"

photo31 = Photo.new(provider: provider5)
photo31.remote_data_url = "https://imgur.com/ebeLhhY"
photo31.save
puts "Image 31 Seeded ✅"

photo32 = Photo.new(provider: provider5)
photo32.remote_data_url = "https://imgur.com/dumJ6JZ"
photo32.save
puts "Image 32 Seeded ✅"

photo33 = Photo.new(provider: provider5)
photo33.remote_data_url = "https://imgur.com/WMQGJYx"
photo33.save
puts "Image 33 Seeded ✅"

photo34 = Photo.new(provider: provider5)
photo34.remote_data_url = "https://imgur.com/RHSmOl5"
photo34.save
puts "Image 34 Seeded ✅"

photo35 = Photo.new(provider: provider5)
photo35.remote_data_url = "https://imgur.com/gl0Don4"
photo35.save
puts "Image 35 Seeded ✅"

puts "Seeding Images for Provider 6"
# Images for
photo36 = Photo.new(provider: provider6)
photo36.remote_data_url = ""
photo36.save
puts "Image 36 Seeded ✅"

photo37 = Photo.new(provider: provider6)
photo37.remote_data_url = ""
photo37.save
puts "Image 37 Seeded ✅"

photo38 = Photo.new(provider: provider6)
photo38.remote_data_url = ""
photo38.save
puts "Image 38 Seeded ✅"

photo39 = Photo.new(provider: provider6)
photo39.remote_data_url = ""
photo39.save
puts "Image 39 Seeded ✅"

photo40 = Photo.new(provider: provider6)
photo40.remote_data_url = ""
photo40.save
puts "Image 40 Seeded ✅"

photo41 = Photo.new(provider: provider6)
photo41.remote_data_url = ""
photo41.save
puts "Image 41 Seeded ✅"

photo42 = Photo.new(provider: provider6)
photo42.remote_data_url = ""
photo42.save
puts "Image 42 Seeded ✅"

puts "All Images Seeded ✅"

puts "🎊 🎉 Congratulations, database succesfully seeded! 🎉 🎊"



