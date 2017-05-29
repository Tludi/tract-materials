class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :projectName
      t.string :projectNumber

      t.timestamps
    end
  end
end
