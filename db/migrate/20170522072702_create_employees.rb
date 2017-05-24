class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.integer :eid 
      t.string :role,default: :subordinates

      t.timestamps
    end
  end
end
