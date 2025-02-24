class CreateProspects < ActiveRecord::Migration[8.0]
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :preferred_language
      t.string :location
      t.string :industry
      t.text :interest
      t.string :contact_method
      t.string :organization
      t.text :notes

      t.timestamps
    end
  end
end
