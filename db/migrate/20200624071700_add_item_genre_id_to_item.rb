# frozen_string_literal: true

class AddItemGenreIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :item_genre_id, :integer
  end
end
