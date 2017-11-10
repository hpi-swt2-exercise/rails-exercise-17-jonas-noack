describe "Show paper page", type: :feature do
    
    it 'should show authors' do
        paper = FactoryGirl.create :paper

        visit paper_path(paper)
        
        expect(page).to have_content(paper.authors[0].name)
    end
    
end