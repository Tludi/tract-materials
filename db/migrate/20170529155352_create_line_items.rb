class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.string :trade
      t.string :itemCode
      t.string :description
      t.decimal :quantity
      t.string :units

      t.integer :project_id

      t.timestamps
    end
  end
end
