class HotcodesController < ApplicationController
  before_action :set_hotcode, only: %i[show edit update destroy]

  # GET /hotcodes or /hotcodes.json
  def index
    @hotcodes = Hotcode.page(params[:page]).per(25)
  end

  # GET /hotcodes/1 or /hotcodes/1.json
  def show
  end

  # GET /hotcodes/new
  def new
    @hotcode = Hotcode.new
  end

  # GET /hotcodes/1/edit
  def edit
  end

  # POST /hotcodes or /hotcodes.json
  def create
    @hotcode = Hotcode.new(hotcode_params)

    respond_to do |format|
      if @hotcode.save
        format.html { redirect_to hotcode_url(@hotcode), notice: 'Hotcode was successfully created.' }
        format.json { render :show, status: :created, location: @hotcode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hotcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotcodes/1 or /hotcodes/1.json
  def update
    respond_to do |format|
      if @hotcode.update(hotcode_params)
        format.html { redirect_to hotcode_url(@hotcode), notice: 'Hotcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotcode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hotcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotcodes/1 or /hotcodes/1.json
  def destroy
    @hotcode.destroy!

    respond_to do |format|
      format.html { redirect_to hotcodes_url, notice: 'Hotcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hotcode
    @hotcode = Hotcode.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def hotcode_params
    params.require(:hotcode).permit(:standard_hot, :hot7, :manufacturer_code, :preparation_code, :logistics_code, :jan, :mhlw,
                                    :yj, :receden_code1, :receden_code2, :notice, :product_name, :receden_name, :unit, :package_style, :package_unit_num, :package_unit_unit, :total_package_unit_num, :total_package_unit_unit, :category, :manufacturer, :seller, :update_category, :update_date)
  end
end
