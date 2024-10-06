class CreateProductAccepteds < ActiveRecord::Migration[7.2]
  def change
    create_table :product_accepteds do |t|
      t.timestamps
    end
  end
end
