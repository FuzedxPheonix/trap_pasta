class CreateMenuItemsOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items_orders do |t|
      t.integer :menu_item_id
      t.integer :order_id

      t.timestamps
    end
  end
end
