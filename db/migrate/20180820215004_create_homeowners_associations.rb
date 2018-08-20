class CreateHomeownersAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :homeowners_associations do |t|
      t.string :name

      t.timestamps
    end
  end
end
