# frozen_string_literal: true

class AddOrderStatusToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :order_status, :integer, default: 0
  end
end
