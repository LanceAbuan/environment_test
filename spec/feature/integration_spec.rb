# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    fill_in 'Date published', with: '10-10-2005'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Writing book Author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    fill_in 'Date published', with: '10/10/2005'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end
end

RSpec.describe 'Entering book price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    fill_in 'Date published', with: '10/10/2005'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(10)
  end
end

RSpec.describe 'Testing Date Published', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    fill_in 'Date published', with: '10/10/2005'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('10/10/2005')
  end
end