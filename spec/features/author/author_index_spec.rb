require 'rails_helper'

describe "When Index is shown", type: :feature do

    it "should render withour error" do
        visit authors_path
    end
    
end