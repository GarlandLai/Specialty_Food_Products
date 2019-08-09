Product.destroy_all

50.times do |index|
  Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.within(range: 1..20),
    country_of_origin: Faker::Address.country_code_long)
end

p "Created #{Product.count} products"

250.times do |index|
  Reviews.create!(
    name: Faker::Name.name,
    rating: Faker::Number.within(range: 1..5),
    content_body: Faker::Lorem.characters(number: 50)
  )
end

p "Created #{Reviews.count} reviews"
