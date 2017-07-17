# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"First User", email: "mail@mail.com", password: "123456")
5.times do |f|
  Facility.create!(
    name: "name ##{f}",
    supervisor: "supervisor ##{f}",
    address: "address ##{f}",
    manager: "manager ##{f}",
  	)
end
