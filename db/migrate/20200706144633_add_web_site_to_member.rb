# frozen_string_literal: true

class AddWebSiteToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :web_site, :string
  end
end
