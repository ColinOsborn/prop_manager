require 'rails_helper'

RSpec.feature 'create' do
  scenario 'user creates a violation ticket' do 

    visit '/'
    click_on 'Violations'
    expect(page).to have_current_path('/violations')

    click_on 'Submit a violation'

end