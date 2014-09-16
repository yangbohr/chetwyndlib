class ChangeOrderToDraftOrder < ActiveRecord::Migration
  def change
    rename_column :drawings, :order, :draft_order
  end
end
