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

class SymptomLog < ApplicationRecord
  belongs_to :user
end
