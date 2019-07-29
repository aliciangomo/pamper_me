class RemovePriceFromTreatments < ActiveRecord::Migration[5.2]
  def change
    remove_column :treatments, :price, :integer
  end
end
