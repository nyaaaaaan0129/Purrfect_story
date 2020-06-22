# frozen_string_literal: true

class CreatePostGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :post_genres do |t|
      t.string :name
      t.integer :valid_invalid_status

      t.timestamps
    end
  end
end
