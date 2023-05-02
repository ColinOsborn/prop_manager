require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:phone_number) }
  end

  context 'name splitting' do
    it 'will split the input name for first and last name methods' do
      user = User.create!(
        name: 'Crazy Cat',
        email: 'crazycatlady5@gmail.com',
        address: '200 Elk run road, Basalt, CO',
        phone_number: '555-283-7585'
      )

      expect(user.first_name).to eq('Crazy')
      expect(user.last_name).to eq('Cat')
    end
  end
end
