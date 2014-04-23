require 'spec_helper'

feature 'Create fruit' do
  scenario 'create some fruits' do
    visit '/'
    fill_in 'name', with: 'apple'
    fill_in 'description', with: 'red'
    click_on 'Create'
    expect(page).to have_content "Name: apple"
    expect(page).to have_link "Update"


    click_on 'Update'
    fill_in 'name', with: 'banana'
    fill_in 'description', with: 'yellow'
    click_on 'Edit'
    expect(page).to have_content "Name: banana"

  end

end