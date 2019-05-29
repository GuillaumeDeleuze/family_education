class AddWebsiteToPartnairs < ActiveRecord::Migration[5.2]
  def change
    add_column :partnairs, :website, :string
    remove_column :partnairs, :price
  end
end
