require "application_system_test_case"

class ReportRecipientsTest < ApplicationSystemTestCase
  setup do
    @report_recipient = report_recipients(:one)
  end

  test "visiting the index" do
    visit report_recipients_url
    assert_selector "h1", text: "Report recipients"
  end

  test "should create report recipient" do
    visit report_recipients_url
    click_on "New report recipient"

    fill_in "Email", with: @report_recipient.email
    fill_in "Report", with: @report_recipient.report_id
    fill_in "Role", with: @report_recipient.role
    click_on "Create Report recipient"

    assert_text "Report recipient was successfully created"
    click_on "Back"
  end

  test "should update Report recipient" do
    visit report_recipient_url(@report_recipient)
    click_on "Edit this report recipient", match: :first

    fill_in "Email", with: @report_recipient.email
    fill_in "Report", with: @report_recipient.report_id
    fill_in "Role", with: @report_recipient.role
    click_on "Update Report recipient"

    assert_text "Report recipient was successfully updated"
    click_on "Back"
  end

  test "should destroy Report recipient" do
    visit report_recipient_url(@report_recipient)
    click_on "Destroy this report recipient", match: :first

    assert_text "Report recipient was successfully destroyed"
  end
end
