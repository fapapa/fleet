class CreateTractors < ActiveRecord::Migration[6.0]
  def change
    create_table :tractors do |t|
      t.string :vin
      t.string :make
      t.integer :year
      t.date :last_maintenance_at

      t.timestamps
    end
  end
end
