feature 'Viewing Peeps' do
  feature 'visiting the homepage' do
    scenario 'As an user, I can see the title' do
      visit '/'
      expect(page).to have_content 'Welcome to Chitter'
    end
  end

  feature 'viewing Peeps' do
    scenario 'As an user, I can see the Peeps' do
      Peep.create(post: "This is a peep!", poster: '@tester', poster_name: 'Mr Test')
      visit '/peeps'

      expect(page).to have_content 'This is a peep'
    end
  end
end
