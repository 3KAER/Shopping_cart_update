class AddDescribeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :describe, :string
  end
end
