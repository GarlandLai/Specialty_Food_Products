require 'rails_helper'
require 'pry'

describe "the add a product" do
  it "adds a new product" do
    visit products_path
    click_link 'Register'
    fill_in "Email", :with => 'fake@gmail.com'
    fill_in "Password", :with => '123456'
    fill_in "Password confirmation", :with => '123456'
    click_on 'Sign up'
    click_link 'Add a new product'
    fill_in 'Name', :with => 'Cheese'
    fill_in 'Cost', :with => 10
    fill_in 'Country of origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Cheese'
  end

  it "gives an error when no name is entered" do
    visit products_path
    click_link 'Register'
    fill_in "Email", :with => 'fake@gmail.com'
    fill_in "Password", :with => '123456'
    fill_in "Password confirmation", :with => '123456'
    click_on 'Sign up'
    click_link 'Add a new product'
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Cost can't be blank"
    expect(page).to have_content "Cost is not a number"
    expect(page).to have_content "Country of origin can't be blank"
  end
end
