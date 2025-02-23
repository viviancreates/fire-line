class SymptomLogsController < ApplicationController
  before_action :set_symptom_log, only: %i[ show edit update destroy ]

  # GET /symptom_logs or /symptom_logs.json
  def index
    @symptom_logs = SymptomLog.all
  end

  # GET /symptom_logs/1 or /symptom_logs/1.json
  def show
  end

  # GET /symptom_logs/new
  def new
    @symptom_log = SymptomLog.new
  end

  # GET /symptom_logs/1/edit
  def edit
  end

  # POST /symptom_logs or /symptom_logs.json
  def create
    @symptom_log = SymptomLog.new(symptom_log_params)

    respond_to do |format|
      if @symptom_log.save
        format.html { redirect_to @symptom_log, notice: "Symptom log was successfully created." }
        format.json { render :show, status: :created, location: @symptom_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @symptom_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /symptom_logs/1 or /symptom_logs/1.json
  def update
    respond_to do |format|
      if @symptom_log.update(symptom_log_params)
        format.html { redirect_to @symptom_log, notice: "Symptom log was successfully updated." }
        format.json { render :show, status: :ok, location: @symptom_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @symptom_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /symptom_logs/1 or /symptom_logs/1.json
  def destroy
    @symptom_log.destroy!

    respond_to do |format|
      format.html { redirect_to symptom_logs_path, status: :see_other, notice: "Symptom log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_symptom_log
      @symptom_log = SymptomLog.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def symptom_log_params
      params.expect(symptom_log: [ :user_id, :symptom, :severity, :log_time, :notes ])
    end
end
