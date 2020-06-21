class RemoveWithdrawalStatusFromMember < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :withdrawal_status, :integer
  end
end
