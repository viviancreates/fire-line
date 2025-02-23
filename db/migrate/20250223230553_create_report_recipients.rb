class CreateReportRecipients < ActiveRecord::Migration[8.0]
  def change
    create_table :report_recipients do |t|
      t.references :report, null: false, foreign_key: true
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
