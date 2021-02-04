feature 'Viewing Peeps' do
  feature 'Visiting the homepage' do
    scenario 'As an user, I can see the homepage' do
      visit '/'

      expect(page).to have_content 'Welcome to Chitter'
    end
  end

  feature 'Viewing peeps' do
    scenario 'As an user, I can see the peeps' do
      visit '/peeps'

      expect(page).to have_content 'This is a Peep'
    end
  end
end
