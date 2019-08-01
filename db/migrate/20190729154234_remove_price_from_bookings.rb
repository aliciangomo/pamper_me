class RemovePriceFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :price, :integer
  end
end
