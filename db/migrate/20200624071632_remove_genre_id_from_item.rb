# frozen_string_literal: true

class RemoveGenreIdFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :genre_id, :integer
  end
end
