# frozen_string_literal: true

class CreateItemGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :item_genres do |t|
      t.string :name
      t.integer :valid_invalid_status

      t.timestamps
    end
  end
end
