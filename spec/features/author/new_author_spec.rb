require 'rails_helper'

describe "New author page", type: :feature do
  first_name = 'Alan'
  last_name = 'Turing'
  homepage = 'http://wikipedia.org/Alan_Turing'

  it "should render withour error" do
    visit new_author_path
  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path
    
    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end

  it "should have a submit button" do
    visit new_author_path

    expect(page).to have_css('input[type="submit"]')
  end

  it "should save data in the database " do
    visit new_author_path

    fill_in 'author_first_name', :with => 'Alan'
    fill_in 'author_last_name', :with => 'Turing'
    fill_in 'author_homepage', :with => homepage
    find('input[type="submit"]').click

    ##expect(Author.where(first_name: 'Alan', last_name:'Turing', homepage: 'http://wikipedia.org/Alan_Turing')).to exist
    #Author.find(:conditions => ["first_name = 'Alan' AND last_name = 'Turing' AND homepage = 'http://wikipedia.org/Alan_Turing'"])
    
  end
end