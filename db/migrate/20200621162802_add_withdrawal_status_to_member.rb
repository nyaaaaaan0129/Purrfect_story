class AddWithdrawalStatusToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :withdrawal_status, :integer, default: 0
  end
end
