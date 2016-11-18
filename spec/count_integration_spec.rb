require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of count', {:type => :feature}) do
  it('displays the count of the search word in the text upon form submission on the result page.') do
    visit('/')
    fill_in('search_word', :with => 'one')
    fill_in('text', :with => 'One two one two One two')
    click_button('Count')
    expect(page).to have_content('Your search word "one" appears 3 times in the text.')
  end
  it('displays input text with the search word highlighted in bold font.') do
    visit('/')
    fill_in('search_word', :with => 'one')
    fill_in('text', :with => 'One two one two One two')
    click_button('Count')
    expect(page).to have_content('Your search word "one" appears 3 times in the text.')
  end
end
