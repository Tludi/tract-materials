class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :trade
      t.string :itemCode
      t.string :description
      t.string :itemUnit
      t.decimal :unitPrice, precision: 8, scale: 2
      t.string :orderUnit
      t.decimal :conversionRate, precision: 4, scale: 2
      t.date  :priceDate
      t.integer :priceAge
      t.decimal :markup
      t.decimal :wastePercent
      t.decimal :wasteQuantity
      t.string :jobCostCode
      t.integer :productionRate
      t.text :note
      t.string :laborClassCode
      t.decimal :laborClassRate

      t.integer :unit_id

      t.timestamps
    end
  end
end
