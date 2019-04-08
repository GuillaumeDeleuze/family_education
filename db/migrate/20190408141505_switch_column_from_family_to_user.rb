class SwitchColumnFromFamilyToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :families, :user_id
    add_column :users, :name, :string
  end
end
