require 'rails_helper'

RSpec.feature 'User edits the recently created violation' do
  scenario 'The details added to the most recent submission are incorrect/not sufficient' do
    @violation = create!(
      title: 'Trash Cans left out',
      description: 'Someone left these trash cans out for more than 48hrs in the corner unit.'
    )

    visit root_path
    click_on 'Violations'

    expect(current_url).to eq('http://www.example.com/violations')
    click_on 'Report a Violation'

    fill_in 'violation_title', with: violation.title
    fill_in 'violation_description', with: violation.description

    click_on 'Submit Violation'

    expect(current_url).to eq("http://www.example.com/violations/#{violation.id}")
    expect(page).to have_content violation_title
    expect(page).to have_content violation_text

    new_description = 'Someone left these trash cans out for more than 48hrs in the corner unit in the right corner of the parking lot'

    click_on 'Edit Submitted Violation'

    fill_in 'violation_description', with: new_description

    click_on "Update Violation"

    expect(page).to have_content violation_title
    expect(page).to have_content new_description
  end
end