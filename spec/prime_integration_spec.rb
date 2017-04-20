require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe('prime number path', {:type => :feature}) do
  it('it will test whether a number is prime or not and then spit it out')do
    visit('/')
    fill_in('input', :with =>11)
    click_button('submit')
    expect(page).to have_content([2,3,5,7,11])
  end
end
