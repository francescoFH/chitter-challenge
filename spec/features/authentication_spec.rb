feature 'authentication' do
  scenario 'As an User, I want to sign in' do
    User.create(handle: 'tester', email: 'test@testing.com', password: 'password123', name: 'Mr Test')

    visit '/sessions/new'
    fill_in 'email', with: 'test@testing.com'
    fill_in 'password', with: 'password123'
    click_button 'Sign In'

    expect(page). to have_content 'Hello @tester'
  end

  scenario 'As an User, I want to see an error if I enter the wrong email' do
    User.create(handle: 'tester', email: 'test@testing.com', password: 'password123', name: 'Mr Test')

    visit '/sessions/new'
    fill_in 'email', with: 'wrong@email.com'
    fill_in 'password', with: 'password123'
    click_button 'Sign In'

    expect(page).not_to have_content 'Hello @tester'
    expect(page).to have_content 'Please check your email or password'
  end

  scenario 'As an User, I want to see an error if I enter the wrong password' do
    User.create(handle: 'tester', email: 'test@testing.com', password: 'password123', name: 'Mr Test')

    visit '/sessions/new'
    fill_in 'email', with: 'test@testing.com'
    fill_in 'password', with: 'wrong'
    click_button 'Sign In'

    expect(page).not_to have_content 'Hello @tester'
    expect(page).to have_content 'Please check your email or password'
  end

  scenario 'As an User, I want to sign out' do
    User.create(handle: 'tester', email: 'test@testing.com', password: 'password123', name: 'Mr Test')

    visit '/sessions/new'
    fill_in 'email', with: 'test@testing.com'
    fill_in 'password', with: 'password123'
    click_button 'Sign In'
    click_button 'Sign Out'

    expect(page).not_to have_content 'Hello @tester'
    expect(page).to have_content 'You have signed out'

  end
end
