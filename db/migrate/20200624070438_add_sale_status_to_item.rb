# frozen_string_literal: true

class AddSaleStatusToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :sale_status, :integer
  end
end
