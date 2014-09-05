class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :file_type
      t.binary :attachment
      t.integer :parent_id

      t.timestamps
    end
  end
end
