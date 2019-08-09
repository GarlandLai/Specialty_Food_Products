require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
  it { should validate_numericality_of :cost }

  it("it titleizes the name of the product") do
    product = Product.create({name: "aged gouda", cost: 10, country_of_origin: "USA"})
    expect(product.name()).to(eq("Aged Gouda"))
  end
end
