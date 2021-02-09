feature 'registration' do
  scenario 'As an User, I want to sign up for chitter' do
    visit 'user/new'
    fill_in 'username', with: 'tester'
    fill_in 'email', with: 'test@testing.com'
    fill_in 'password', with: 'password1234'
    click_button 'Sign Up'

    expect(page).to have_content 'Welcome tester'
  end
end
