class AddNeighborhoodToProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :providers, :neighborhood, :string
  end
end
