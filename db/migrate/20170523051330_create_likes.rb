class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.boolean :like,default: :true
      t.references :likeable,polymorphic: true,index: true
      t.timestamps
    end
  end
end
