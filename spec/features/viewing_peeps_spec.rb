feature 'Viewing Peeps' do
  feature 'visiting the homepage' do
    scenario 'As an user, I can see the title' do
      visit '/'
      expect(page).to have_content 'Welcome to Chitter'
    end
  end

  feature 'viewing Peeps' do
    before do
      visit '/peeps/new'
      fill_in "What's happening?", with: "Might be a Peep here"
      click_button "Peep"
    end

    scenario 'As an user, I can see the Peeps' do

      visit '/peeps'

      expect(page).to have_content 'Might be a Peep here'

    end
  end
end
