class AddAttachmentToDrawing < ActiveRecord::Migration
  def change 
      add_attachment :drawings, :attachment
  end
end
