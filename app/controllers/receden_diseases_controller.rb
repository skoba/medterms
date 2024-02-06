class RecedenDiseasesController < ApplicationController
  before_action :set_receden_disease, only: %i[show edit update destroy]

  # GET /receden_diseases or /receden_diseases.json
  def index
    @receden_diseases = RecedenDisease.page(params[:page]).per(25)
  end

  # GET /receden_diseases/1 or /receden_diseases/1.json
  def show
  end

  # GET /receden_diseases/new
  def new
    @receden_disease = RecedenDisease.new
  end

  # GET /receden_diseases/1/edit
  def edit
  end

  # POST /receden_diseases or /receden_diseases.json
  def create
    @receden_disease = RecedenDisease.new(receden_disease_params)

    respond_to do |format|
      if @receden_disease.save
        format.html { redirect_to receden_disease_url(@receden_disease), notice: 'Receden disease was successfully created.' }
        format.json { render :show, status: :created, location: @receden_disease }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receden_disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receden_diseases/1 or /receden_diseases/1.json
  def update
    respond_to do |format|
      if @receden_disease.update(receden_disease_params)
        format.html { redirect_to receden_disease_url(@receden_disease), notice: 'Receden disease was successfully updated.' }
        format.json { render :show, status: :ok, location: @receden_disease }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @receden_disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receden_diseases/1 or /receden_diseases/1.json
  def destroy
    @receden_disease.destroy!

    respond_to do |format|
      format.html { redirect_to receden_diseases_url, notice: 'Receden disease was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_receden_disease
    @receden_disease = RecedenDisease.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def receden_disease_params
    params.require(:receden_disease).permit(:update_category, :master_type, :disease_code, :transfer_code,
                                            :disease_base_name_len, :disease_base_name, :disease_abbrv_len, :disease_abbrv_name, :disease_kana_len, :disease_kana_name, :disease_control_num, :adoption_category, :exchange_code, :icd_10_1, :icd_10_2, :icd_10_1_2013, :icd_10_2_2013, :reservation_18, :stand_alone_prohibition, :not_claim, :specific_disease_category, :registered_date, :updated_date, :disease_base_name_update, :disease_name_abbrv_update, :disease_kana_update, :adoption_category_update, :exchange_code_update, :icd_10_1_update, :icd_10_2_update, :dental_abbrv_update, :nambyo_category_update, :dental_specific_disease_category, :stand_alone_prohibition_update, :not_claim_update, :specific_disease_update, :changed_code, :dental_disease_abbrv, :reservation40, :reservation41, :nambyo_outpatient_category, :dental_specific_disease_category, :icd_10_1_2013_update, :icd_10_2_2013_update)
  end
end
