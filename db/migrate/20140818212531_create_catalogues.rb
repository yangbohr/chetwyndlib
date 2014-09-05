class CreateCatalogues < ActiveRecord::Migration
  def change
    create_table :catalogues do |t|
      t.string :title
      t.string :company
      t.date :year

      t.timestamps
    end
  end
end
