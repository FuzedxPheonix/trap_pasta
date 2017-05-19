class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :imageUrl
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
