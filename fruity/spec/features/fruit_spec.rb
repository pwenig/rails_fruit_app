require 'spec_helper'

feature 'Create fruit' do
  scenario 'create some fruits' do
    visit '/'
    click_on 'Create'
    fill_in 'name', with: 'apple'
    fill_in 'description', with: 'red'
    click_on 'Create'
    expect(page).to have_content "Name: apple"

  end
end