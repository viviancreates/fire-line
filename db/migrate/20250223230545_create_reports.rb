class CreateReports < ActiveRecord::Migration[8.0]
  def change
    create_table :reports do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :generated_at
      t.string :format
      t.string :language
      t.text :content

      t.timestamps
    end
  end
end
