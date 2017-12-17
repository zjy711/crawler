require 'rails_helper'

RSpec.describe JobsController, type: :controller do
  describe 'POST create' do
    context 'returns correct response' do
      it 'returns job id' do
        allow(Job).to receive(:create).and_return(double(id: 123))

        post :create, params: { job: { urls: ['google.com']} }
        expect(response.body).to eq({ id: 123 }.to_json)
      end

      it 'renders 202' do
        post :create, params: { job: { urls: ['google.com']} }
        expect(response).to have_http_status 202
      end
    end
  end
end