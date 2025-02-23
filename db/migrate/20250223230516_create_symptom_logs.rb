class CreateSymptomLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :symptom_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :symptom
      t.integer :severity
      t.datetime :log_time
      t.text :notes

      t.timestamps
    end
  end
end
