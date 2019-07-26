class AddPaymentTypeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :payment_type, :integer
  end
end
