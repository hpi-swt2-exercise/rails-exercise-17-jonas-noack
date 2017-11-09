require 'rails_helper'

describe "Index author page", type: :feature do

  it "should render withour error" do
    visit authors_path
  end

  it "should link to the new author page" do
    visit authors_path
    expect(page).to have_css("a", :text => 'Add author')
  end

  it "should link to the Show author page" do
    Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    visit authors_path
    expect(page).to have_css("a", :text => 'Show')
  end

  it 'should link to deletion of authors' do
    Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    visit authors_path
    expect(page).to have_css('a', :text => 'Destroy')
  end

end
