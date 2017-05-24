class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.integer :eid
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
