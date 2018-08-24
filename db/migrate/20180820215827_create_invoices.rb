class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.belongs_to :user
      t.float :total_due
      t.text :description
      t.boolean :is_paid
      t.float :total_outstanding
      t.belongs_to :category

      t.timestamps
    end
  end
end
