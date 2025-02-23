# == Schema Information
#
# Table name: air_quality_readings
#
#  id         :integer          not null, primary key
#  timestamp  :datetime
#  aqi        :integer
#  source     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class AirQualityReadingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
