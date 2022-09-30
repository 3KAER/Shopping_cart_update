class AddDescribeToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :describe, :string
  end
end
