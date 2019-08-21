require 'rails_helper'
require 'pry'

describe "the add a review" do
  it "adds a new review" do
    visit products_path
    click_link 'Register'
    fill_in "Email", :with => 'fake@gmail.com'
    fill_in "Password", :with => '123456'
    fill_in "Password confirmation", :with => '123456'
    click_on 'Sign up'
    click_link 'Add a new product'
    fill_in 'Name', :with => 'Cheesey Bread'
    fill_in 'Cost', :with => 10
    fill_in 'Country of origin', :with => 'USA'
    click_on 'Create Product'
    within('#card4')do
      click_on 'Cheesey Bread'
    end
    click_on 'Add a review'
    fill_in 'Name', :with => 'Joe'
    fill_in 'Rating', :with => '5'
    fill_in 'Content body', :with => 'This was really good. I like the way it smelled. Smelly cheese is the best! its a must buy, yummmmmmmmmmm!'
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
    expect(page).to have_content 'Joe'
  end

    it "gives an error when no name is entered" do
      visit products_path
      click_link 'Register'
      fill_in "Email", :with => 'fake@gmail.com'
      fill_in "Password", :with => '123456'
      fill_in "Password confirmation", :with => '123456'
      click_on 'Sign up'
      click_link 'Add a new product'
      fill_in 'Name', :with => 'Cheesey Bread'
      fill_in 'Cost', :with => 10
      fill_in 'Country of origin', :with => 'USA'
      click_on 'Create Product'
      within('#card4')do
        click_on 'Cheesey Bread'
      end
      click_on 'Add a review'
      click_on 'Create Review'
      expect(page).to have_content "Name can't be blank"
      expect(page).to have_content "Rating can't be blank"
      expect(page).to have_content "Rating is not a number"
      expect(page).to have_content "Content body can't be blank"
      expect(page).to have_content "Content body is too short (minimum is 50 characters)"
    end
end
