# frozen_string_literal: true

class RemoveContentFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :content, :text
  end
end
