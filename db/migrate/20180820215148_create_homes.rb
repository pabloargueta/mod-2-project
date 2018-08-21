class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :address
      t.belongs_to :homeowners_association, foreign_key: true
      t.float :account_balance
      t.string :username

      t.timestamps
    end
    add_index :homes, :username, unique: true
  end
end
