require 'rails_helper'

RSpec.describe 'categories API', type: :request do
  # initialize test data
  let!(:organization) { create(:organization) }
  let!(:categories) { create_list(:category, 10, organization_id: organization.id) }
  let(:organization_id) { organization.id }
  # let(:category_id) { categories.first.id }
  let(:id) { categories.first.id }

  # # Test suite for GET /categories
  # describe 'GET /categories' do
  #   # make HTTP get request before each example
  #   before { get '/categories' }

  #   it 'returns categories' do
  #     # Note `json` is a custom helper to parse JSON responses
  #     expect(json).not_to be_empty
  #     expect(json.size).to eq(10)
  #   end

  #   it 'returns status code 200' do
  #     expect(response).to have_http_status(200)
  #   end
  # end

  # # Test suite for GET /categories/:id
  # describe 'GET /categories/:id' do
  #   before { get "/categories/#{category_id}" }

  #   context 'when the record exists' do
  #     it 'returns the category' do
  #       expect(json).not_to be_empty
  #       expect(json['id']).to eq(category_id)
  #     end

  #     it 'returns status code 200' do
  #       expect(response).to have_http_status(200)
  #     end
  #   end

  #   context 'when the record does not exist' do
  #     let(:category_id) { 100 }

  #     it 'returns status code 404' do
  #       expect(response).to have_http_status(404)
  #     end

  #     it 'returns a not found message' do
  #       expect(response.body).to match(/Couldn't find category/)
  #     end
  #   end
  # end

  # # Test suite for POST /categories
  # describe 'POST /categories' do
  #   # valid payload
  #   let(:valid_attributes) { { name: 'Learn Elm' } }

  #   context 'when the request is valid' do
  #     before { post '/categories', params: valid_attributes }

  #     it 'creates a category' do
  #       expect(json['name']).to eq('Learn Elm')
  #     end

  #     it 'returns status code 201' do
  #       expect(response).to have_http_status(201)
  #     end
  #   end

  #   context 'when the request is invalid' do
  #     before { post '/categories', params: { name: 'Foobar' } }

  #     it 'returns status code 422' do
  #       expect(response).to have_http_status(422)
  #     end

  #     it 'returns a validation failure message' do
  #       expect(response.body)
  #         .to match(/Validation failed: Created by can't be blank/)
  #     end
  #   end
  # end

  # # Test suite for PUT /categories/:id
  # describe 'PUT /categories/:id' do
  #   let(:valid_attributes) { { name: 'Shopping' } }

  #   context 'when the record exists' do
  #     before { put "/categories/#{category_id}", params: valid_attributes }

  #     it 'updates the record' do
  #       expect(response.body).to be_empty
  #     end

  #     it 'returns status code 204' do
  #       expect(response).to have_http_status(204)
  #     end
  #   end
  # end

  # # Test suite for DELETE /categories/:id
  # describe 'DELETE /categories/:id' do
  #   before { delete "/categories/#{category_id}" }

  #   it 'returns status code 204' do
  #     expect(response).to have_http_status(204)
  #   end
  # end

   # Test suite for GET /categories/:category_id/organizations
   describe 'GET /categories/:category_id/organizations' do
    before { get "/categories/#{category_id}/organizations" }

    context 'when category exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all category organizations' do
        expect(json.size).to eq(20)
      end
    end

    context 'when category does not exist' do
      let(:category_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find category/)
      end
    end
  end

  # Test suite for GET /categories/:category_id/organizations/:id
  describe 'GET /categories/:category_id/organizations/:id' do
    before { get "/categories/#{category_id}/organizations/#{id}" }

    context 'when category organization exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the organization' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when category organization does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find organization/)
      end
    end
  end

  # Test suite for PUT /categories/:category_id/organizations
  describe 'POST /categories/:category_id/organizations' do
    let(:valid_attributes) { { name: 'Visit Narnia', done: false } }

    context 'when request attributes are valid' do
      before { post "/categories/#{category_id}/organizations", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/categories/#{category_id}/organizations", params: {} }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match(/Validation failed: Name can't be blank/)
      end
    end
  end

  # Test suite for PUT /categories/:category_id/organizations/:id
  describe 'PUT /categories/:category_id/organizations/:id' do
    let(:valid_attributes) { { name: 'Mozart' } }

    before { put "/categories/#{category_id}/organizations/#{id}", params: valid_attributes }

    context 'when organization exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end

      it 'updates the organization' do
        updated_organization = Organization.find(id)
        expect(updated_organization.name).to match(/Mozart/)
      end
    end

    context 'when the organization does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find organization/)
      end
    end
  end

  # Test suite for DELETE /categories/:id
  describe 'DELETE /categories/:id' do
    before { delete "/categories/#{todo_id}/organizations/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
