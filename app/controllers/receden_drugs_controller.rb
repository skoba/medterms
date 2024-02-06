class RecedenDrugsController < ApplicationController
  before_action :set_receden_drug, only: %i[show edit update destroy]

  # GET /receden_drugs or /receden_drugs.json
  def index
    @receden_drugs = RecedenDrug.page(params[:page]).per(25)
  end

  # GET /receden_drugs/1 or /receden_drugs/1.json
  def show
  end

  # GET /receden_drugs/new
  def new
    @receden_drug = RecedenDrug.new
  end

  # GET /receden_drugs/1/edit
  def edit
  end

  # POST /receden_drugs or /receden_drugs.json
  def create
    @receden_drug = RecedenDrug.new(receden_drug_params)

    respond_to do |format|
      if @receden_drug.save
        format.html { redirect_to receden_drug_url(@receden_drug), notice: 'Receden drug was successfully created.' }
        format.json { render :show, status: :created, location: @receden_drug }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receden_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receden_drugs/1 or /receden_drugs/1.json
  def update
    respond_to do |format|
      if @receden_drug.update(receden_drug_params)
        format.html { redirect_to receden_drug_url(@receden_drug), notice: 'Receden drug was successfully updated.' }
        format.json { render :show, status: :ok, location: @receden_drug }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @receden_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receden_drugs/1 or /receden_drugs/1.json
  def destroy
    @receden_drug.destroy!

    respond_to do |format|
      format.html do
        redirect_to receden_drugs_url,
                    notice: 'Receden drug was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_receden_drug
    @receden_drug = RecedenDrug.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def receden_drug_params
    params.require(:receden_drug).permit(:update_category, :master_type,
                                         :drug_code, :kanji_len, :kanji_name,
                                         :kana_len, :kana_name, :unit_code,
                                         :unit_len, :unit_name, :price_category,
                                         :price, :reserved13, :narcotics_category,
                                         :nerve_destroying, :bio, :generic,
                                         :reserved18, :dent_specific, :enhancer,
                                         :injection_volume, :registration_category,
                                         :product_name_code, :old_price_category,
                                         :old_price, :kanji_update_category,
                                         :kana_update_category, :drug_form,
                                         :reserve29, :updated_date, :abolition_date,
                                         :mhlwcode, :publication_order, :expiration_date,
                                         :product_name)
  end
end
