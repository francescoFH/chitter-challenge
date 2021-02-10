feature 'Posting a new Peep' do
  scenario 'As an User, I can post a new Peep' do
    User.create(handle: 'tester', email: 'test@email.com', password: 'password123', name: 'Mr Test')

    visit '/sessions/new'
    fill_in :email, with: 'test@email.com'
    fill_in :password, with: 'password123'

    click_button 'Sign In'

    visit '/peeps/new'

    fill_in "peep", with: "This is my test peep"
    click_button "Peep"

    expect(page).to have_content "This is my test peep"
  end
end
