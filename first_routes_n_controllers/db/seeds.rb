# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u1 = User.new({name: "Alice", email:"alice@gmail.com"})
u2 = User.new({name: "Bob", email:"bob@gmail.com"})
u3 = User.new({name: "Charlie", email:"charlie@gmail.com"})
u4 = User.new({name: "Dennis", email:"dennis@gmail.com"})
u5 = User.new({name: "Edward", email:"edward@gmail.com"})

u1.save!
u2.save!
u3.save!
u4.save!
u5.save!
