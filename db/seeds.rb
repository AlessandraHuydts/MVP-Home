Recipe.destroy_all
Match.destroy_all
User.destroy_all


puts "Creating users.."
user_attributes = [
  {
    first_name: "Alessandra",
    email: "alessandra2@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7661526
  },
  {
    first_name: "Victoria",
    email: "victoria@gmail.com",
    password: "12345678",
    latitude: 32.0763337,
    longitude: 34.7660526
  },
  {
    first_name: "Salo",
    email: "salo@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7660626
  },
  {
    first_name: "Emmanuel",
    email: "emmanuel@gmail.com",
    password: "12345678",
    latitude: 48.7228535,
    longitude: 9.21835617
  },
  {
    first_name: "Baraa",
    email: "baraa@gmail.com",
    password: "12345678",
    latitude: 48.7228535,
    longitude: 9.21835617
  },
  {
    first_name: "Baraa23",
    email: "baraa23@gmail.com",
    password: "12345678"
  }
]
User.create!(user_attributes)
puts "Created #{User.count} users"

salo = User.find_by(first_name: "Salo")
salo.cuisine_list.add("mexican", "italian", "israeli")
puts "Salo has cuisine interest in #{salo.cuisine_list}"


puts "Creating matches.."

Match.create!(user1: User.first, user2: User.second)
Match.create!(user1: User.first, user2: User.third)
Match.create!(user1: User.fourth, user2: User.last)

puts "Created #{Match.count} matches"


