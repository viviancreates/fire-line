# == Schema Information
#
# Table name: reports
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  generated_at :datetime
#  format       :string
#  language     :string
#  content      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require "test_helper"

class ReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
