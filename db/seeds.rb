Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.ingredient,
    cost: Faker::Number.within(range 1..20),
    country_of_origin: Faker::Address.country_code_long)
end

p "Created #{Product.count} products"
