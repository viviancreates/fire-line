require "test_helper"

class SymptomLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @symptom_log = symptom_logs(:one)
  end

  test "should get index" do
    get symptom_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_symptom_log_url
    assert_response :success
  end

  test "should create symptom_log" do
    assert_difference("SymptomLog.count") do
      post symptom_logs_url, params: { symptom_log: { log_time: @symptom_log.log_time, notes: @symptom_log.notes, severity: @symptom_log.severity, symptom: @symptom_log.symptom, user_id: @symptom_log.user_id } }
    end

    assert_redirected_to symptom_log_url(SymptomLog.last)
  end

  test "should show symptom_log" do
    get symptom_log_url(@symptom_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_symptom_log_url(@symptom_log)
    assert_response :success
  end

  test "should update symptom_log" do
    patch symptom_log_url(@symptom_log), params: { symptom_log: { log_time: @symptom_log.log_time, notes: @symptom_log.notes, severity: @symptom_log.severity, symptom: @symptom_log.symptom, user_id: @symptom_log.user_id } }
    assert_redirected_to symptom_log_url(@symptom_log)
  end

  test "should destroy symptom_log" do
    assert_difference("SymptomLog.count", -1) do
      delete symptom_log_url(@symptom_log)
    end

    assert_redirected_to symptom_logs_url
  end
end
