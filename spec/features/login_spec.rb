describe "the login process", js: true, type: :feature do
  before :each do
    Author.new(email: 'user@example.com', password: 'password')
  end

  it "loggs me in", driver: :selenium do
    visit '/author_sessions/new'

    within 'form' do
      fill_in 'email', with: 'user@example.com'
      fill_in 'password', with: 'password'
    end

    page.has_button?('Login')
    page.assert_current_path('/author_sessions/new')

    click_button('Login')
    page.assert_current_path('/articles')
  end
end