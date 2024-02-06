require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/hotcodes' do
  # This should return the minimal set of attributes required to create a valid
  # Hotcode. As you add validations to Hotcode, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Hotcode.create! valid_attributes
      get hotcodes_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      hotcode = Hotcode.create! valid_attributes
      get hotcode_url(hotcode)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_hotcode_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      hotcode = Hotcode.create! valid_attributes
      get edit_hotcode_url(hotcode)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Hotcode' do
        expect do
          post hotcodes_url, params: { hotcode: valid_attributes }
        end.to change(Hotcode, :count).by(1)
      end

      it 'redirects to the created hotcode' do
        post hotcodes_url, params: { hotcode: valid_attributes }
        expect(response).to redirect_to(hotcode_url(Hotcode.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Hotcode' do
        expect do
          post hotcodes_url, params: { hotcode: invalid_attributes }
        end.not_to change(Hotcode, :count)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post hotcodes_url, params: { hotcode: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested hotcode' do
        hotcode = Hotcode.create! valid_attributes
        patch hotcode_url(hotcode), params: { hotcode: new_attributes }
        hotcode.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the hotcode' do
        hotcode = Hotcode.create! valid_attributes
        patch hotcode_url(hotcode), params: { hotcode: new_attributes }
        hotcode.reload
        expect(response).to redirect_to(hotcode_url(hotcode))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        hotcode = Hotcode.create! valid_attributes
        patch hotcode_url(hotcode), params: { hotcode: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested hotcode' do
      hotcode = Hotcode.create! valid_attributes
      expect do
        delete hotcode_url(hotcode)
      end.to change(Hotcode, :count).by(-1)
    end

    it 'redirects to the hotcodes list' do
      hotcode = Hotcode.create! valid_attributes
      delete hotcode_url(hotcode)
      expect(response).to redirect_to(hotcodes_url)
    end
  end
end
