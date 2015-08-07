require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of the word', {:type => :feature}) do
  it('processes the user entry and returns the number of times a word appears in a sentence') do
    visit('/')
    fill_in('word', :with => "If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked? peck")
    click_button('Send')
    expect(page).to have_content(2)
  end
end
