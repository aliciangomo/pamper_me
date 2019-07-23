class AddCoordinatesToProviders < ActiveRecord::Migration[5.2]
  def change
    add_column :providers, :latitude, :float
    add_column :providers, :longitude, :float
  end
end
