require 'rails_helper'

RSpec.describe JobsController, type: :controller do
  describe 'POST create' do
    it 'renders 202' do
      post :create
      expect(response).to have_http_status 202
    end

    it 'returns job id' do
      post :create
      expect(response.body).to eq({ id: 123 }.to_json)
    end
  end
end