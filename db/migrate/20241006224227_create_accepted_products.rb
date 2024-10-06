class CreateAcceptedProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :accepted_products do |t|
      t.references :seller, null: false, foreign_key: true
      t.string :product_name

      t.timestamps
    end
  end
end
