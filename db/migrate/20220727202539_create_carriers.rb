class CreateCarriers < ActiveRecord::Migration[6.1]
  def change
    create_table :carriers do |t|
      t.string :carrier_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
