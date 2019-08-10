Product.destroy_all

1.times do |index|
  @product = Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.within(range: 1..20),
    country_of_origin: Faker::Address.country_code_long)

    # if @product.persisted? == true
      5.times do |index|
        @reviews = @product.reviews.create!(
          name: Faker::Name.name,
          rating: Faker::Number.within(range: 1..5),
          content_body: Faker::Lorem.characters(number: 50)
        )
      end
    end
  # end

  p "Created #{Product.count} products"
