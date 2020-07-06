# frozen_string_literal: true

class AddIntroductionToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :introduction, :text
  end
end
