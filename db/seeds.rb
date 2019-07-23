Booking.destroy_all
Treatment.destroy_all
Provider.destroy_all
User.destroy_all

puts "cleaning the database..."
puts "database clean, starting seed!"

puts "Creating Users"
user1 = User.create!(first_name: "Jacob", last_name: "Morton", email: "Jacob@gmail.com", password: "123456", avatar: "")
# user1.save!
puts "User 1 - Seeded ✅"
user2 = User.create!(first_name: "Adam", last_name: "McCallister", email: "Adam@gmail.com", password: "123456", avatar: "")
# user2.save!
puts "User 2 - Seeded ✅"
user3 = User.create!(first_name: "Alicia", last_name: "Ngomo", email: "Alicia@gmail.com", password: "123456", avatar: "")
# user3.save!
puts "User 3 - Seeded ✅"
user4 = User.create!(first_name: "Jon", last_name: "Doe", email: "Jon@gmail.com", password: "123456", avatar: "")
user4.save!
puts "User 4 - Seeded ✅"
user5 = User.create!(first_name: "Sam", last_name: "Barrett", email: "Sam@gmail.com", password: "123456", avatar: "")
# user5.save!
puts "User 5 - Seeded ✅"
puts "All Users seeded ✅"





puts "Creating Providers"
provider1 = Provider.create!(location: " Calle de las Infantas, 8, 28004 Madrid",
  photo: "",
  description: "Great tattoos in Madrid",
  statement: "100 percent satisfaction, guaranteed!",
  rating: 5,
  user: user1)
# provider1.save!
puts "Provider 1 Seeded ✅"

provider2 = Provider.create!(location: "Calle del Barquillo, 39, 28004 Madrid",
  photo: "",
  description: "Great nail tech in Madrid",
  statement: "True art, right on your nails!",
  rating: 4,
  user: user2)
# provider2.save!
puts "Provider 2 Seeded ✅"

provider3 = Provider.create!(location: "Calle de Valverde, 44, 28004 Madrid",
  photo: "",
  description: "Great hair stylist in Madrid",
  statement: "I do hair, with love and care!",
  rating: 3,
  user: user3)
# provider3.save!
puts "Provider 3 Seeded ✅"

puts "All Providers Seeded ✅"


puts "Creating Treatments"
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

puts "All Treatments Seeded ✅"


puts "Creating Bookings"
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
  date: "2019-08-15",
  status: 0)
puts "Booking 12 Seeded ✅"

puts "All Bookings Seeded ✅"

puts "🎊 🎉 Congratulations, database succesfully seeded! 🎉 🎊"





