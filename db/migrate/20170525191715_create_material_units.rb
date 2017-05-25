class CreateMaterialUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :material_units do |t|
      t.string :unitType

      t.timestamps
    end
  end
end
