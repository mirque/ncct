class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :payment_date
      t.date :renewal_date
      t.string :member_type

      t.timestamps
    end
  end
end
