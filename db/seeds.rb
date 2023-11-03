# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(
  'email'=>'user1@example.com',
  'name'=>'Mark Otto',
  'phone_number'=>'9705556826',
  'street_address'=>'123 Field Street',
  'state'=>'Colorado',
  'zip_code'=>'81623',
  'sign_in_count'=>3,
  'city'=>'Basalt'
)
puts 'User1 has been created!'
user2 = User.create!(
  'email'=>'user2@example.com',
  'name'=>'Jacob Thornton',
  'phone_number'=>'9705556826',
  'street_address'=>'225 Pine Street',
  'state'=>'Colorado',
  'zip_code'=>'81621',
  'sign_in_count'=>3,
  'city'=>'Aspen'
)
puts 'User2 has been created!'
user3 = User.create!(
  'email'=>'user3@example.com',
  'name'=>'Martin Smith',
  'phone_number'=>'9705556826',
  'street_address'=>'1310 Elm Street',
  'state'=>'Colorado',
  'zip_code'=>'81621',
  'sign_in_count'=>5,
  'city'=>'Aspen'
)
puts 'User3 has been created!'
user4 = User.create!(
  'email'=>'user4@example.com',
  'name'=>'Kate Mayers',
  'phone_number'=>'9705556826',
  'street_address'=>'1310 Elm Street',
  'state'=>'Colorado',
  'zip_code'=>'81621',
  'sign_in_count'=>5,
  'city'=>'Aspen'
)
puts 'User4 has been created!'
