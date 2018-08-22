class AddHomeOwnerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :home_owner, index: true
  end
end
