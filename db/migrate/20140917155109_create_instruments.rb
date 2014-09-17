class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.integer :item
      t.string :tag_no
      t.string :description
      t.string :manufacturer
      t.string :model_no
      t.string :service_name
      t.string :io_type
      t.string :location
      t.string :instrument_range
      t.string :setpoint
      t.string :eng_unit
      t.string :remark
      t.string :revision

      t.timestamps
    end
  end
end
