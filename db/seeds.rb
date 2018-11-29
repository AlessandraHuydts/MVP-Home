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
    longitude: 34.7661526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543486054/14947430_1430518190304704_2215749094286475860_n.jpg",
    bio: " I am half German and half Dutch, but currently live in Tel Aviv. I love to cook, bake, swim and spend time with friends. I am very exited to try this application:)"
  },
  {
    first_name: "Victoria",
    email: "victoria@gmail.com",
    password: "12345678",
    latitude: 32.0763337,
    longitude: 34.7660526,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543486054/22789141_10100120106986471_2166716107713851198_n.jpg",
    bio: "Hi I am Victoria, I currently live in Tel Aviv and I would love to cook with somone. I am especially interested in learning how to make Israeli dishes. I have lived all over the world so far, and I am looking forward to a nice homecooked dinner together:)"
  },
  {
    first_name: "Salo",
    email: "salo@gmail.com",
    password: "12345678",
    latitude: 32.0763317,
    longitude: 34.7660626,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543486054/37643942_10156841776529050_3929005442084110336_n.jpg",
    bio: "I would like to work in the high-tech scene in the future. I'm a 3rd year student of CS in Mexico City. I'm a technology enthusiast and looking forward to get the most out of the bootcamp! Very excited to start this journey :)"
  },
  {
    first_name: "Emmanuel",
    email: "emmanuel@gmail.com",
    password: "12345678",
    latitude: 48.7228535,
    longitude: 9.21835617,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543486054/T02NE0241-UDA0HQJ5V-243dbed7e43f-72.jpg",
    bio: "I had my Diploma in Business Administration in Cambridge International College UK. Am now upcoming fully stack web Developer leading to become a programmer."
  },
  {
    first_name: "Baraa",
    email: "baraa@gmail.com",
    password: "12345678",
    latitude: 48.7228535,
    longitude: 9.21835617,
    facebook_picture_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1543486054/46458137_2061704790559867_4097574108064120832_n.jpg",
    bio: "I worked in marketing before, but I always had a passion for startups, technology and making a change, after failing in my first startup I saw that coding skills is what's missing. Le Wagon and to the next startup!"
  },
]
User.create!(user_attributes)
puts "Created #{User.count} users"

puts "Assigning Tags to Alessandra...."
alessandra = User.find_by(first_name: "Alessandra")
alessandra.cuisine_list.add("Israeli", "Japanese", "Italian")
alessandra.interest_list.add("swim", "cook", "bake", "code", "travel")
alessandra.restriction_list.add("Gluten-Free", "Lactose-Free")
alessandra.save
puts "Alessandra has the following tags #{alessandra.cuisine_list}, #{alessandra.interest_list}, #{alessandra.restriction_list}"

puts "Assigning Tags to Victoria...."
victoria = User.find_by(first_name: "Victoria")
victoria.cuisine_list.add("Thai", "Chinese", "Isreali")
victoria.interest_list.add("read", "travel")
victoria.restriction_list.add("Vegetarian")
victoria.save
puts "Victoria has the following tags #{victoria.cuisine_list}, #{victoria.interest_list}, #{victoria.restriction_list}"


puts "Assigning Tags to Salo...."
salo = User.find_by(first_name: "Salo")
salo.cuisine_list.add("Mexican", "Italian", "Israeli")
salo.interest_list.add("code", "swim", "run")
salo.restriction_list.add("Kosher")
salo.save
puts "Salo has the following tags #{salo.cuisine_list}, #{salo.interest_list}, #{salo.restriction_list}"

puts "Assigning Tags to Emmanuel...."
emmanuel = User.find_by(first_name: "Emmanuel")
emmanuel.cuisine_list.add("Greek", "Chinese", "French")
emmanuel.interest_list.add("code", "swim", "run")
emmanuel.restriction_list.add("Vegan")
emmanuel.save
puts "Emmanuel has the following tags #{emmanuel.cuisine_list}, #{emmanuel.interest_list}, #{emmanuel.restriction_list}"

puts "Assigning Tags to Baraa...."
baraa = User.find_by(first_name: "Baraa")
baraa.cuisine_list.add("Korean", "Indian", "Spanish")
baraa.interest_list.add("play piano", "code", "draw")
baraa.save
puts "Baraa has the following tags #{baraa.cuisine_list}, #{baraa.interest_list}, #{baraa.restriction_list}"


puts "Creating matches.."

Match.create!(user1: User.first, user2: User.second)
Match.create!(user1: User.first, user2: User.third)
Match.create!(user1: User.fourth, user2: User.last)

puts "Created #{Match.count} matches"


