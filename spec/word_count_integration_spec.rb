require('capybara/rspec')
require('./app.rb')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_count path',{:type => :feature}) do
  it('accepts user string and target word, returning the frequency of the target word in the string') do
    visit('/')
    fill_in('sentence', :with => 'The greatest thing is the greatest place the species has ever known')
    fill_in('target', :with => 'the')
    click_button('Word Count')
    expect(page).to have_content("3")
  end
end
