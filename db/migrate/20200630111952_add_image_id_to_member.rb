# frozen_string_literal: true

class AddImageIdToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :image_id, :string
  end
end
