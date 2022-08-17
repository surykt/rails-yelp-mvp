require "faker"

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::Number.leading_zero_number(digits: 11),
  category: Restaurant::CATEGORIES.sample}
pizza_east =  {name: "Pizza East", address: Faker::Address.street_address,
  phone_number: Faker::Number.leading_zero_number(digits: 11),
  category: Restaurant::CATEGORIES.sample}

[dishoom, pizza_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
