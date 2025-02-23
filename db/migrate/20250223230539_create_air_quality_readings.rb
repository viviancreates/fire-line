class CreateAirQualityReadings < ActiveRecord::Migration[8.0]
  def change
    create_table :air_quality_readings do |t|
      t.datetime :timestamp
      t.integer :aqi
      t.string :source

      t.timestamps
    end
  end
end
