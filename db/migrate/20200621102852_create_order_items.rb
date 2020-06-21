class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :item_id
      t.integer :order_id
      t.integer :items_tax_included_price
      t.integer :number_of_items

      t.timestamps
    end
  end
end
