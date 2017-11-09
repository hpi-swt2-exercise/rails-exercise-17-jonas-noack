require 'rails_helper'

describe "Edit author page", type: :feature do

    it "should save changes" do
        author = FactoryGirl.create :author
        visit edit_author_path(author)
        
    end

end