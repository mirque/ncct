class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :lastname
      t.string :firstname
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :postal
      t.string :email
      t.string :email_name
      t.string :expiration_date

      t.timestamps
    end
  end
end
