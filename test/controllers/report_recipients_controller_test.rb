require "test_helper"

class ReportRecipientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_recipient = report_recipients(:one)
  end

  test "should get index" do
    get report_recipients_url
    assert_response :success
  end

  test "should get new" do
    get new_report_recipient_url
    assert_response :success
  end

  test "should create report_recipient" do
    assert_difference("ReportRecipient.count") do
      post report_recipients_url, params: { report_recipient: { email: @report_recipient.email, report_id: @report_recipient.report_id, role: @report_recipient.role } }
    end

    assert_redirected_to report_recipient_url(ReportRecipient.last)
  end

  test "should show report_recipient" do
    get report_recipient_url(@report_recipient)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_recipient_url(@report_recipient)
    assert_response :success
  end

  test "should update report_recipient" do
    patch report_recipient_url(@report_recipient), params: { report_recipient: { email: @report_recipient.email, report_id: @report_recipient.report_id, role: @report_recipient.role } }
    assert_redirected_to report_recipient_url(@report_recipient)
  end

  test "should destroy report_recipient" do
    assert_difference("ReportRecipient.count", -1) do
      delete report_recipient_url(@report_recipient)
    end

    assert_redirected_to report_recipients_url
  end
end
