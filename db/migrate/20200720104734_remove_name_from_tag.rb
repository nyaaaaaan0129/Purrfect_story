class RemoveNameFromTag < ActiveRecord::Migration[5.2]
  def change
    remove_column :tags, :name, :integer
  end
end
