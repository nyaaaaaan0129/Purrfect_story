class AddWebSiteToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :web_site, :string
  end
end
