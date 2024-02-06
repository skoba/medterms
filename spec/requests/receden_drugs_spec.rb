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

RSpec.describe '/receden_drugs' do
  # This should return the minimal set of attributes required to create a valid
  # RecedenDrug. As you add validations to RecedenDrug, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      RecedenDrug.create! valid_attributes
      get receden_drugs_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      receden_drug = RecedenDrug.create! valid_attributes
      get receden_drug_url(receden_drug)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_receden_drug_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      receden_drug = RecedenDrug.create! valid_attributes
      get edit_receden_drug_url(receden_drug)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new RecedenDrug' do
        expect do
          post receden_drugs_url, params: { receden_drug: valid_attributes }
        end.to change(RecedenDrug, :count).by(1)
      end

      it 'redirects to the created receden_drug' do
        post receden_drugs_url, params: { receden_drug: valid_attributes }
        expect(response).to redirect_to(receden_drug_url(RecedenDrug.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new RecedenDrug' do
        expect do
          post receden_drugs_url, params: { receden_drug: invalid_attributes }
        end.not_to change(RecedenDrug, :count)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post receden_drugs_url, params: { receden_drug: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested receden_drug' do
        receden_drug = RecedenDrug.create! valid_attributes
        patch receden_drug_url(receden_drug), params: { receden_drug: new_attributes }
        receden_drug.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the receden_drug' do
        receden_drug = RecedenDrug.create! valid_attributes
        patch receden_drug_url(receden_drug), params: { receden_drug: new_attributes }
        receden_drug.reload
        expect(response).to redirect_to(receden_drug_url(receden_drug))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        receden_drug = RecedenDrug.create! valid_attributes
        patch receden_drug_url(receden_drug), params: { receden_drug: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested receden_drug' do
      receden_drug = RecedenDrug.create! valid_attributes
      expect do
        delete receden_drug_url(receden_drug)
      end.to change(RecedenDrug, :count).by(-1)
    end

    it 'redirects to the receden_drugs list' do
      receden_drug = RecedenDrug.create! valid_attributes
      delete receden_drug_url(receden_drug)
      expect(response).to redirect_to(receden_drugs_url)
    end
  end
end