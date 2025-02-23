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

class ReportRecipient < ApplicationRecord
  belongs_to :report
end
