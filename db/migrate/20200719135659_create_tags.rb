class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.integer :name
      t.integer :post_id

      t.timestamps
    end
  end
end
