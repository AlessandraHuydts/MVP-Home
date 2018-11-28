Recipe.destroy_all
Match.destroy_all
User.destroy_all


puts "Creating users.."
user_attributes = [
  {
    first_name: "Alessandra",
    email: "alessandra@gmail.com",
    password: "12345678",
  },
  {
    first_name: "Victoria",
    email: "victoria@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Salo",
    email: "salo@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Emmanuel",
    email: "emmanuel@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Baraa",
    email: "baraa@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Cory",
    email: "cory@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Daniel",
    email: "daniel@gmail.com",
    password: "12345678"
  },

  {
    first_name: "Gabriel",
    email: "gabriel@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Jack",
    email: "jack@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Leah",
    email: "leah@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Moshe",
    email: "moshe@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Narmeen",
    email: "narmeen@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Ruben",
    email: "ruben@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Thomas",
    email: "thomas@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Yoann",
    email: "yoann@gmail.com",
    password: "12345678"
  },
  {
    first_name: "Zaneta",
    email: "zaneta@gmail.com",
    password: "12345678"
  }
]
User.create!(user_attributes)
puts "Created #{User.count} users"

salo = User.find_by(first_name: "Salo")
salo.cuisine_list.add("mexican", "italian", "israeli")
puts "Salo has cuisine interest in #{salo.cuisine_list}"



