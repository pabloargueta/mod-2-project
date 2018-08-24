class CreateHomeownersAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :homeowners_associations do |t|
      t.string :name
      t.integer :total_owed
      t.integer :total_paid

      t.timestamps
    end
  end
end
