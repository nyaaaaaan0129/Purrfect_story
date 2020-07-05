# frozen_string_literal: true

class RemoveOrderStatusFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :order_status, :integer
  end
end
