require 'rails_helper'

describe "New author model", type: :model do
  
  it "When an author is created with first name 'Alan', last name 'Turing', and homepage 'http://wikipedia.org/Alan_Turing'
  Then an instance of Author should be created" do
    
    author = Author.new("first_name" => "Alan","last_name" => "Turing", "homepage" => "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    
  end

end