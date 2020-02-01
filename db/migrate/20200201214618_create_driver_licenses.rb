class CreateDriverLicenses < ActiveRecord::Migration[6.0]
  def change
    create_table :driver_licenses do |t|
      t.references :driver, null: false, foreign_key: true
      t.string :number
      t.date :expiry_date

      t.timestamps
    end
  end
end
