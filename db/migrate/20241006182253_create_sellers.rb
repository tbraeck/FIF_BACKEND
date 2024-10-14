class CreateSellers < ActiveRecord::Migration[7.2]
  def change
    create_table :sellers do |t|
      t.string :company_name
      t.string :address
      t.string :zip_code
      t.text :email
      t.integer :phone_number
      t.string :accepted_product
      t.string :type_of_repair

      t.timestamps
    end
  end
end
