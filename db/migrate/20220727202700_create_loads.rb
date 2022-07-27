class CreateLoads < ActiveRecord::Migration[6.1]
  def change
    create_table :loads do |t|
      t.string :weight
      t.string :origin
      t.string :destination
      t.integer :price_mile
      t.string :pickup_date
      t.string :dropoff_date
      t.references :shipper, null: false, foreign_key: true
      t.references :carrier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
