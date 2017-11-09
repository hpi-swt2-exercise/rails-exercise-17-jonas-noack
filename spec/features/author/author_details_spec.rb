require 'rails_helper'

describe "When Author Alan Turing is added", type: :feature do

  it "should display details" do

    alan = FactoryGirl.create :author
    visit author_path(alan)
 
    expect(page).to have_text("Alan")
  end

end