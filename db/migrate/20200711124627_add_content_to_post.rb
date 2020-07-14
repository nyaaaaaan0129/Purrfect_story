# frozen_string_literal: true

class AddContentToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :content, :text, limit: 4_294_967_295
  end
end
