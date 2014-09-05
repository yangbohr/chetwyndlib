class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
      t.string :discipline
      t.integer :order
      t.string :tembec_drawing
      t.string :vender
      t.string :vendor_drawing_number
      t.string :sheet_number
      t.integer :revision
      t.text :title
      t.date :date
      t.string :equipment_number
      t.boolean :cad
      t.boolean :paper
      t.text :notes
      t.boolean :hanging

      t.timestamps
    end
  end
end
