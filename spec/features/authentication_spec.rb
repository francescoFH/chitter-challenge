feature 'authentication' do
  scenario 'As an User, I want to sign in' do
    User.create(handle: 'tester', email: 'test@testing.com', password: 'password123', name: 'Mr Test')

    visit '/session/new'
    fill_in 'email', with: 'test@testing.com'
    fill_in 'password', with: 'password123'

    expect(page). to have_content 'Hello @tester'
  end
end
