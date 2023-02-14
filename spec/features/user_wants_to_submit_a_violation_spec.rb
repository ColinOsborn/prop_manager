require 'rails_helper'

RSpec.feature 'User wants to submit/create a violation' do
  scenario 'they enter data to create/submit a new violation' do
    violation_title = 'Someone has parked their car taking up numerous spots'
    violation_text = 'In the parking lot outside of the south building, some one parked their car illegally, taking up numerous spots'
    violation_image_path = 'https://images.pexels.com/photos/5438619/pexels-photo-5438619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2' 

    visit home_path
    click_on 'Violations'
    # new page - try to assert this
    expect(page).to have_url('/violations')
    click_on 'Submit a Violation'

    fill_in 'violation_title', with: violation_title
    fill_in 'violation_description', with: violation_text
    # fill_in 'violation_image_path', with: violation_image_path

    click_on 'Submit Violation'

    expect(page).to have_content violation_title
    expect(page).to have_content violation_description
  end

  context 'the violation submitted is invalid' do
    scenario 'the user should see an error message telling them the title cant be blank' do
      violation_text = 'In the parking lot outside of the south building, some one parked their car illegally, taking up numerous spots'
      violation_image_path = 'https://images.pexels.com/photos/5438619/pexels-photo-5438619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2' 

      visit violations_path
      click_on 'Submit a Violation'

      fill_in 'viloation_description', with: violation_text
      # fill_in 'violation_image_path', with: violation_image_path
      click_on 'Submit Violation'

      expect(page).to have_content "Name can't be blank"
      expect(page).to have_content 'prohibited this record from being saved'
    end

    scenario 'the user should see an error message telling them the description cant be blank' do
      violation_title = 'Someone has parked their car taking up numerous spots'
      violation_image_path = 'https://images.pexels.com/photos/5438619/pexels-photo-5438619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2' 

      visit violations_path
      click_on 'Submit a Violation'

      fill_in 'violation_title', with: violation_title
      # fill_in 'violation_image_path', with: violation_image_path
      # holding off on violation images until S3 is setup
      click_on 'Submit Violation'

      expect(page).to have_content "Description can't be blank"
      expect(page).to have_content 'prohibited this record from being saved'
    end
  end
end
