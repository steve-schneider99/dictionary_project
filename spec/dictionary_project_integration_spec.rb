require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('path for Word class', {:type => :feature}) do
  before() do
    Word.clear()
    Definition.clear()
  end

  it('adds a word to the dictionary list and returns success page') do
    visit('/')
    fill_in('new_word', :with => "cat")
    click_button('Add Word To Dictionary')
    expect(page).to have_content('cat')
  end

  it('adds a definition to a word on the dictionary list') do
    visit('/')
    fill_in('new_word', :with => "dog")
    click_button("Add Word To Dictionary")
    click_link("Return to Dictionary")
    click_link("dog")
    fill_in("definition", :with => "scruffy")
    click_button("Add Definition")
    expect(page).to have_content("scruffy")
  end

end
