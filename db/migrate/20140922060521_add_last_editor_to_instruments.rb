class AddLastEditorToInstruments < ActiveRecord::Migration
  def change
    add_column :instruments, :last_editor, :string
  end
end
