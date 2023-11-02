require 'rails_helper'

RSpec.describe DashboardsController, type: :controller do
  describe 'GET Show' do
    it 'renders the show template' do
      get :show
      expect(response).to render_template('show')
    end
  end
end
