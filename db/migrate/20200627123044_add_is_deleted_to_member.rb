# frozen_string_literal: true

class AddIsDeletedToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :is_deleted, :boolean, default: false
  end
end
