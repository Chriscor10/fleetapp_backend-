class CreateShippers < ActiveRecord::Migration[6.1]
  def change
    create_table :shippers do |t|
      t.string :company_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
