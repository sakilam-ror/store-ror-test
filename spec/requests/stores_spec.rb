require 'rails_helper'

RSpec.describe 'Stores API', type: :request do
  # initialize test data
  let!(:stores) { create_list(:store, 3) }

  # Test suite for GET /stores
  describe 'GET /stores' do
    # make HTTP get request before each example
    before { get '/stores' }

    it 'returns stores' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(3)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end