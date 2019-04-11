class AddPriceToPartnairs < ActiveRecord::Migration[5.2]
  def change
    add_column :partnairs, :price, :integer
  end
end
