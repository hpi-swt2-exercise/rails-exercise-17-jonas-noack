require 'rails_helper'

describe "When Index is shown", type: :feature do

    it "should render withour error" do
        visit authors_path
    end

    it "should show author alan and homepage" do
        alan = FactoryGirl.create :author
        visit authors_path
     
        expect(page).to have_text(alan.name)
        expect(page).to have_text(alan.homepage)
        expect(page).to have_css("th", :text => "Homepage")
        expect(page).to have_css("th", :text => "Name")
              
    end

    it "should show link to new author" do
        visit authors_path
        expect(page).to have_css("a", :text => "Add author")
    end
    
end