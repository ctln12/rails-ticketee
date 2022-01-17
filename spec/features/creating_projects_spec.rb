require 'rails_helper'

RSpec.feature 'Users can create new projects', type: :feature do
  scenario 'with valid attributes' do
    visit '/'

    click_link 'New Project'

    fill_in 'Name', with: 'Subline Text 3'
    fill_in 'Description', with: 'A text editor for everyone'
    click_button 'Create Project'

    expect(page).to have_text('Project has been created.')
  end
end
