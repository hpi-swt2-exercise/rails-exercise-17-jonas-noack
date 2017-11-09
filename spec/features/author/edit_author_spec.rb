require 'rails_helper'

describe 'Edit author page', type: :feature do

  it 'should render withour error' do
    author = Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    visit edit_author_path(author)
  end

end
