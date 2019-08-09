require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_presence_of :name}
  it { should validate_presence_of :rating}
  it { should validate_presence_of :content_body}
  it { should validate_length_of(:content_body).is_at_least(50) }
  it { should validate_length_of(:content_body).is_at_most(250) }
  it { should validate_numericality_of :rating}

  # it("it titleizes the name of the reviewer") do
  #   review = product.reviews.create({name: "joe smith", rating: 5, content_body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."})
  #   expect(review.name()).to(eq("Joe Smith"))
  # end
end
