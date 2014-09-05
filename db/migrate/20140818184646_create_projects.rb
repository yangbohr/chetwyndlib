class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :company
      t.date :year
      t.string :title
      t.text :description
      t.string :prepared_by
      t.string :area

      t.timestamps
    end
  end
end
