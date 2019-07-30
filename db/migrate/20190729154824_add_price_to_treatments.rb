class AddPriceToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_monetize :treatments, :price, currency: { present: false }
  end
end
