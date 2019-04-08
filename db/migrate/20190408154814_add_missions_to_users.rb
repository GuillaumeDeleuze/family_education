class AddMissionsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :missions, foreign_key: true
  end
end
