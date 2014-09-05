class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.string :title
      t.string :equipment
      t.date :date

      t.timestamps
    end
  end
end
