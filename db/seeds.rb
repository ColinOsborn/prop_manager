# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: 'user1@example.com',
  name: 'Mark Otto',
  phone_number: '9705556826',
  street_address: '123 Field Street',
  state: 'Colorado',
  zip_code: '81623',
  sign_in_count: 3,
  city: 'Basalt',
  password: 'password',
  password_confirmation: 'password'
)
puts 'User1 has been created!'
User.create!(
  email: 'user2@example.com',
  name: 'Jacob Thornton',
  phone_number: '9705556826',
  street_address: '225 Pine Street',
  state: 'Colorado',
  zip_code: '81621',
  sign_in_count: 3,
  city: 'Aspen',
  password: 'password',
  password_confirmation: 'password'
)
puts 'User2 has been created!'
User.create!(
  email: 'user3@example.com',
  name: 'Martin Smith',
  phone_number: '9705556826',
  street_address: '1310 Elm Street',
  state: 'Colorado',
  zip_code: '81621',
  sign_in_count: 5,
  city: 'Aspen',
  password: 'password',
  password_confirmation: 'password'
)
puts 'User3 has been created!'
User.create!(
  email: 'user4@example.com',
  name: 'Kate Mayers',
  phone_number: '9705556826',
  street_address: '1310 Elm Street',
  state: 'Colorado',
  zip_code: '81621',
  sign_in_count: 5,
  city: 'Aspen',
  password: 'password',
  password_confirmation: 'password'
)
puts 'User4 has been created!'
User.create!(
  email: 'user5@example.com',
  name: 'Delilah King',
  phone_number: '9705556826',
  street_address: '10 Park Ave',
  state: 'Colorado',
  zip_code: '81621',
  sign_in_count: 8,
  city: 'Aspen',
  password: 'password',
  password_confirmation: 'password'
)
puts 'User5 has been created!'
User.create!(
  email: 'user6@example.com',
  name: 'Cat Crazy',
  phone_number: '9705556826',
  street_address: '110 Pines Ave',
  state: 'Colorado',
  zip_code: '81621',
  sign_in_count: 8,
  city: 'Basalt',
  password: 'password',
  password_confirmation: 'password'
)
puts 'User6 has been created!'
