class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :code
      t.integer :type
      t.string :vendor
      t.text :description
      t.text :location

      t.timestamps
    end
  end
end
