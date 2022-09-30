class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
          t.references :user
          
          t.string  :name, null: false
          t.text :description
         
    
          t.timestamps
      
    
  end
end
end