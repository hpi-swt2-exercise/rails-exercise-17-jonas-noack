describe "New author page", type: :feature do
    
 
    it "should render without error" do
        visit new_paper_path
    end

    it 'should show validation errors' do
        visit new_paper_path
        fill_in 'paper_title', with: 'Miachael'
        fill_in 'paper_year', with: '2012'
        find('input[type="submit"]').click
    
        expect(page).to have_content("Venue can't be blank")
    end
    
end