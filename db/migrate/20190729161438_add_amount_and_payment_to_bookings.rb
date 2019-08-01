class AddAmountAndPaymentToBookings < ActiveRecord::Migration[5.2]
  def change
    add_monetize :bookings, :amount, currency: { present: false }
    add_column :bookings, :payment, :jsonb
  end
end
