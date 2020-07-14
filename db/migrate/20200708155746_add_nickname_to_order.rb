# frozen_string_literal: true

class AddNicknameToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :nickname, :string
  end
end
