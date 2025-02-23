# == Schema Information
#
# Table name: symptom_logs
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  symptom    :string
#  severity   :integer
#  log_time   :datetime
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class SymptomLogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
