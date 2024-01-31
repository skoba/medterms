class RecedenMedicationsController < ApplicationController
  before_action :set_receden_medication, only: %i[ show edit update destroy ]

  # GET /receden_medications or /receden_medications.json
  def index
    @receden_medications = RecedenMedication.all
  end

  # GET /receden_medications/1 or /receden_medications/1.json
  def show
  end

  # GET /receden_medications/new
  def new
    @receden_medication = RecedenMedication.new
  end

  # GET /receden_medications/1/edit
  def edit
  end

  # POST /receden_medications or /receden_medications.json
  def create
    @receden_medication = RecedenMedication.new(receden_medication_params)

    respond_to do |format|
      if @receden_medication.save
        format.html { redirect_to receden_medication_url(@receden_medication), notice: "Receden medication was successfully created." }
        format.json { render :show, status: :created, location: @receden_medication }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receden_medication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receden_medications/1 or /receden_medications/1.json
  def update
    respond_to do |format|
      if @receden_medication.update(receden_medication_params)
        format.html { redirect_to receden_medication_url(@receden_medication), notice: "Receden medication was successfully updated." }
        format.json { render :show, status: :ok, location: @receden_medication }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @receden_medication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receden_medications/1 or /receden_medications/1.json
  def destroy
    @receden_medication.destroy!

    respond_to do |format|
      format.html { redirect_to receden_medications_url, notice: "Receden medication was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receden_medication
      @receden_medication = RecedenMedication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def receden_medication_params
      params.require(:receden_medication).permit(:update_cat, :master_type, :drug_code, :kanji_len, :kanji_name, :kana_len, :kana_name, :unit_code, :unit_len, :unit_name, :price_category, :price, :reserved13, :narcotics_category, :nerve_destroying, :bio, :generic, :reserved18, :dent_specific, :enhancer, :injection_volume, :registration_category, :product_name_code, :old_price_category, :old_price, :kanji_update_category, :kana_update_category, :drug_form, :reserve29, :updated_date, :abolition_date, :mhlwcode, :publication_order, :expiration_date, :product_name)
    end
end
