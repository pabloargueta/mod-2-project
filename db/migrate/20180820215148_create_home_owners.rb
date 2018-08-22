class CreateHomeOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :home_owners do |t|
      t.string :address
      t.belongs_to :homeowners_association, foreign_key: true
      t.float :account_balance
      t.string :username

      t.timestamps
    end
    add_index :home_owners, :username, unique: true
  end
end
