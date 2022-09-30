class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.references :product
      t.references :user
      t.integer :order_id
      t.integer :quantity
      
      t.decimal :total
      t.decimal :unit_price

      t.timestamps
    end
  end
end
