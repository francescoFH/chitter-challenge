feature 'Creating Peeps' do
  scenario 'As an user, I can post a new Peep' do
    visit '/peeps/new'

    fill_in :peep, with: 'This is a new Peep'
    click_button "Post"

    expect(page).to have_content 'This is a new Peep'
  end
end
