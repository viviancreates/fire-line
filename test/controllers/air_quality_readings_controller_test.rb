require "test_helper"

class AirQualityReadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @air_quality_reading = air_quality_readings(:one)
  end

  test "should get index" do
    get air_quality_readings_url
    assert_response :success
  end

  test "should get new" do
    get new_air_quality_reading_url
    assert_response :success
  end

  test "should create air_quality_reading" do
    assert_difference("AirQualityReading.count") do
      post air_quality_readings_url, params: { air_quality_reading: { aqi: @air_quality_reading.aqi, source: @air_quality_reading.source, timestamp: @air_quality_reading.timestamp } }
    end

    assert_redirected_to air_quality_reading_url(AirQualityReading.last)
  end

  test "should show air_quality_reading" do
    get air_quality_reading_url(@air_quality_reading)
    assert_response :success
  end

  test "should get edit" do
    get edit_air_quality_reading_url(@air_quality_reading)
    assert_response :success
  end

  test "should update air_quality_reading" do
    patch air_quality_reading_url(@air_quality_reading), params: { air_quality_reading: { aqi: @air_quality_reading.aqi, source: @air_quality_reading.source, timestamp: @air_quality_reading.timestamp } }
    assert_redirected_to air_quality_reading_url(@air_quality_reading)
  end

  test "should destroy air_quality_reading" do
    assert_difference("AirQualityReading.count", -1) do
      delete air_quality_reading_url(@air_quality_reading)
    end

    assert_redirected_to air_quality_readings_url
  end
end
