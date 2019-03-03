# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  require 'faker'

  User.delete_all
  Picture.delete_all
  Offer.delete_all

  5.times do |i|
   User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: "qwerty", email: "user#{i}@yopmail.com", password: "qwerty")
  end
puts "Users created"

  5.times do |i|
    Picture.create!(name: Faker::Name.first_name, description: "Moi,Moche et Méchant. Allez acheter cette putain de photo !", price: rand(1..30), condition: "good", administrator_id: User.all.sample.id)
  end
puts "Pictures created"

  Picture.all.each do |pictures|
    i = rand(1..5)
    i.times do
      users = User.all.reject{|u| pictures.administrator == u}.reject{|u| pictures.users.include?(u)}
      Offer.create!(user_id: users.sample.id, picture_id: Picture.all.sample.id, stripe_customer_id: Faker::Code.ean)
    end
  end

puts "Offers created"
