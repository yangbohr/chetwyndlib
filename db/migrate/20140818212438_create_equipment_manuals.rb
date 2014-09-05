class CreateEquipmentManuals < ActiveRecord::Migration
  def change
    create_table :equipment_manuals do |t|
      t.string :title
      t.string :equipment_number
      t.string :company
      t.string :model

      t.timestamps
    end
  end
end
