class AddAreaToDrawing < ActiveRecord::Migration
  def change
    add_column :drawings, :area, :string
    add_column :drawings, :original_order, :integer
  end
end
