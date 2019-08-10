Product.destroy_all

50.times do |index|
  @product = Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.between(from: 1, to: 20),
    country_of_origin: Faker::Address.country_code_long)

    # if @product.persisted? == true
      rand(1..10).times do |index|
        @reviews = @product.reviews.create!(
          name: Faker::Name.name,
          rating: Faker::Number.within(range: 1..5),
          content_body: Faker::Lorem.characters(number: 50)
        )
      end
    end
  # end

  p "Created #{Product.count} products"
  p "Created #{Review.count} reviews"
