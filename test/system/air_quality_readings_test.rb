require "application_system_test_case"

class AirQualityReadingsTest < ApplicationSystemTestCase
  setup do
    @air_quality_reading = air_quality_readings(:one)
  end

  test "visiting the index" do
    visit air_quality_readings_url
    assert_selector "h1", text: "Air quality readings"
  end

  test "should create air quality reading" do
    visit air_quality_readings_url
    click_on "New air quality reading"

    fill_in "Aqi", with: @air_quality_reading.aqi
    fill_in "Source", with: @air_quality_reading.source
    fill_in "Timestamp", with: @air_quality_reading.timestamp
    click_on "Create Air quality reading"

    assert_text "Air quality reading was successfully created"
    click_on "Back"
  end

  test "should update Air quality reading" do
    visit air_quality_reading_url(@air_quality_reading)
    click_on "Edit this air quality reading", match: :first

    fill_in "Aqi", with: @air_quality_reading.aqi
    fill_in "Source", with: @air_quality_reading.source
    fill_in "Timestamp", with: @air_quality_reading.timestamp.to_s
    click_on "Update Air quality reading"

    assert_text "Air quality reading was successfully updated"
    click_on "Back"
  end

  test "should destroy Air quality reading" do
    visit air_quality_reading_url(@air_quality_reading)
    click_on "Destroy this air quality reading", match: :first

    assert_text "Air quality reading was successfully destroyed"
  end
end
