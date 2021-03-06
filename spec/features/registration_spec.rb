feature 'registration' do
  scenario 'As an User, I want to sign up for chitter' do
    visit 'user/new'
    fill_in 'handle', with: 'tester'
    fill_in 'email', with: 'test@testing.com'
    fill_in 'password', with: 'password123'
    fill_in 'name', with: 'Mr Test'
    click_button 'Sign Up'

    expect(page).to have_content 'Hello @tester'
  end
end
