class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.belongs_to :home, foreign_key: true
      t.float :total_due
      t.date :date_created
      t.text :description
      t.boolean :paid?
      t.float :total_outstanding
      t.belongs_to :invoice_category, foreign_key: true

      t.timestamps
    end
  end
end
