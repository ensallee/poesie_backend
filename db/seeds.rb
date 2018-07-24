# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "ensallee", password: "password", display_name: "Betsy", hometown: "Brooklyn", bio: "poet and web developer")
User.create(username: "nwsufrin", password: "password", display_name: "Nat", hometown: "Brooklyn", bio: "poet and therapist")
User.create(username: "mminton", password: "password", display_name: "Mark", hometown: "New York", bio: "poet and teacher")
