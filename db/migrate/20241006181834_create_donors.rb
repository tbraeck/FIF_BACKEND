class CreateDonors < ActiveRecord::Migration[7.2]
  def change
    create_table :donors do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.text :email
      t.integer :phone_number
      t.integer :zip_code
      t.string :product_name
      t.string :brand
      t.string :how_broken

      t.timestamps
    end
  end
end
