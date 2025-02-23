require "application_system_test_case"

class SymptomLogsTest < ApplicationSystemTestCase
  setup do
    @symptom_log = symptom_logs(:one)
  end

  test "visiting the index" do
    visit symptom_logs_url
    assert_selector "h1", text: "Symptom logs"
  end

  test "should create symptom log" do
    visit symptom_logs_url
    click_on "New symptom log"

    fill_in "Log time", with: @symptom_log.log_time
    fill_in "Notes", with: @symptom_log.notes
    fill_in "Severity", with: @symptom_log.severity
    fill_in "Symptom", with: @symptom_log.symptom
    fill_in "User", with: @symptom_log.user_id
    click_on "Create Symptom log"

    assert_text "Symptom log was successfully created"
    click_on "Back"
  end

  test "should update Symptom log" do
    visit symptom_log_url(@symptom_log)
    click_on "Edit this symptom log", match: :first

    fill_in "Log time", with: @symptom_log.log_time.to_s
    fill_in "Notes", with: @symptom_log.notes
    fill_in "Severity", with: @symptom_log.severity
    fill_in "Symptom", with: @symptom_log.symptom
    fill_in "User", with: @symptom_log.user_id
    click_on "Update Symptom log"

    assert_text "Symptom log was successfully updated"
    click_on "Back"
  end

  test "should destroy Symptom log" do
    visit symptom_log_url(@symptom_log)
    click_on "Destroy this symptom log", match: :first

    assert_text "Symptom log was successfully destroyed"
  end
end
