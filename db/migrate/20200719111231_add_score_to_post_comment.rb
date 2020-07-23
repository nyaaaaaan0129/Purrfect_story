class AddScoreToPostComment < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :score, :flaot
  end
end
