class AddMemberIdToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :member_id, :integer

  end
end
