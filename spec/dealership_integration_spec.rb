require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of the Dealership page', {:type => :feature}) do
  it('process user input and redirect to dealership page') do
    visit('/')
    click_link('Dealership List')
    expect(page).to have_content("Dealership Page")
  end
end
