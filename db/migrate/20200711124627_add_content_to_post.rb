class AddContentToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :content, :text, :limit => 4294967295
  end
end
