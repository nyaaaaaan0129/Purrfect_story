# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image_id
      t.integer :post_genre_id
      t.integer :member_id

      t.timestamps
    end
  end
end
