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

    it "should show link to new author and all authors" do
        visit authors_path
        expect(page).to have_css("a", :text => "Add author")
    end

    it "should link to author page" do
        author = FactoryGirl.create :author
        visit authors_path

        expect(page).to have_link("Show")
    end

    it "should allow editing authors" do
        author = FactoryGirl.create :author
        visit authors_path

        expect(page).to have_link("Edit")
    end

    it "should support deleting authors" do
        author = FactoryGirl.create :author
        visit authors_path

        expect(page).to have_link("Destroy")
    end
    
end