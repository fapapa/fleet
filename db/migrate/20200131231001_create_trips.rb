class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.date :date
      t.references :driver, null: false, foreign_key: true
      t.references :tractor, null: false, foreign_key: true
      t.integer :origin_id, null: false
      t.integer :destination_id, null: false

      t.timestamps
    end
  end
end
