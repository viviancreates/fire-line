class ReportRecipientsController < ApplicationController
  before_action :set_report_recipient, only: %i[ show edit update destroy ]

  # GET /report_recipients or /report_recipients.json
  def index
    @report_recipients = ReportRecipient.all
  end

  # GET /report_recipients/1 or /report_recipients/1.json
  def show
  end

  # GET /report_recipients/new
  def new
    @report_recipient = ReportRecipient.new
  end

  # GET /report_recipients/1/edit
  def edit
  end

  # POST /report_recipients or /report_recipients.json
  def create
    @report_recipient = ReportRecipient.new(report_recipient_params)

    respond_to do |format|
      if @report_recipient.save
        format.html { redirect_to @report_recipient, notice: "Report recipient was successfully created." }
        format.json { render :show, status: :created, location: @report_recipient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @report_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_recipients/1 or /report_recipients/1.json
  def update
    respond_to do |format|
      if @report_recipient.update(report_recipient_params)
        format.html { redirect_to @report_recipient, notice: "Report recipient was successfully updated." }
        format.json { render :show, status: :ok, location: @report_recipient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @report_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_recipients/1 or /report_recipients/1.json
  def destroy
    @report_recipient.destroy!

    respond_to do |format|
      format.html { redirect_to report_recipients_path, status: :see_other, notice: "Report recipient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_recipient
      @report_recipient = ReportRecipient.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def report_recipient_params
      params.expect(report_recipient: [ :report_id, :email, :role ])
    end
end
