class CreateSafetyManuals < ActiveRecord::Migration
  def change
    create_table :safety_manuals do |t|
      t.string :title

      t.timestamps
    end
  end
end
