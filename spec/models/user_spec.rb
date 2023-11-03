require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:street_address) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:zip_code) }
    it { is_expected.to validate_presence_of(:phone_number) }
  end

  context 'name splitting' do
    it 'will split the input name for first and last name methods' do
      hoa = HousingAssociation.create!(
        name: 'The Villas at Elk Run',
        zip_code: '81621',
        state: 'Colorado'
      )
      user = User.create!(
        name: 'Crazy Cat',
        email: 'crazycatlady5@gmail.com',
        street_address: '200 Elk run road',
        city: 'Basalt',
        state: 'CO',
        zip_code: '81621',
        phone_number: '555-283-7585',
        password: 'LamePassword',
        housing_association_id: hoa.id
      )

      expect(user.first_name).to eq('Crazy')
      expect(user.last_name).to eq('Cat')
    end
  end
end
