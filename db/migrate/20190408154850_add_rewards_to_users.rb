class AddRewardsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :rewards, foreign_key: true
  end
end
