class ChangePaperToString < ActiveRecord::Migration
  def change
    change_column :drawings, :paper, :string 
  end
end
