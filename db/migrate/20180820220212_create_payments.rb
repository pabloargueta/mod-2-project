class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.belongs_to :invoice
      t.datetime :date_paid
      t.belongs_to :user
      t.float :payment_amount

      t.timestamps
    end
  end
end
