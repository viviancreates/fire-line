# == Schema Information
#
# Table name: report_recipients
#
#  id         :integer          not null, primary key
#  report_id  :integer          not null
#  email      :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class ReportRecipientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
