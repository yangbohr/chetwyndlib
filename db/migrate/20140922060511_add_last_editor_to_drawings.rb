class AddLastEditorToDrawings < ActiveRecord::Migration
  def change
    add_column :drawings, :last_editor, :string
  end
end
