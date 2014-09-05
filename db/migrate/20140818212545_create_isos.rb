class CreateIsos < ActiveRecord::Migration
  def change
    create_table :isos do |t|
      t.string :title
      t.string :tage

      t.timestamps
    end
  end
end
