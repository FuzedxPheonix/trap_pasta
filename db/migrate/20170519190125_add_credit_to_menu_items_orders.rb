class AddCreditToMenuItemsOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :menu_items_orders, :credit, :integer
  end
end
