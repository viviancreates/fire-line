class AirQualityReadingsController < ApplicationController
  before_action :set_air_quality_reading, only: %i[ show edit update destroy ]

  # GET /air_quality_readings or /air_quality_readings.json
  def index
    @air_quality_readings = AirQualityReading.all
  end

  # GET /air_quality_readings/1 or /air_quality_readings/1.json
  def show
  end

  # GET /air_quality_readings/new
  def new
    @air_quality_reading = AirQualityReading.new
  end

  # GET /air_quality_readings/1/edit
  def edit
  end

  # POST /air_quality_readings or /air_quality_readings.json
  def create
    @air_quality_reading = AirQualityReading.new(air_quality_reading_params)

    respond_to do |format|
      if @air_quality_reading.save
        format.html { redirect_to @air_quality_reading, notice: "Air quality reading was successfully created." }
        format.json { render :show, status: :created, location: @air_quality_reading }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @air_quality_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_quality_readings/1 or /air_quality_readings/1.json
  def update
    respond_to do |format|
      if @air_quality_reading.update(air_quality_reading_params)
        format.html { redirect_to @air_quality_reading, notice: "Air quality reading was successfully updated." }
        format.json { render :show, status: :ok, location: @air_quality_reading }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @air_quality_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_quality_readings/1 or /air_quality_readings/1.json
  def destroy
    @air_quality_reading.destroy!

    respond_to do |format|
      format.html { redirect_to air_quality_readings_path, status: :see_other, notice: "Air quality reading was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_quality_reading
      @air_quality_reading = AirQualityReading.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def air_quality_reading_params
      params.expect(air_quality_reading: [ :timestamp, :aqi, :source ])
    end
end
