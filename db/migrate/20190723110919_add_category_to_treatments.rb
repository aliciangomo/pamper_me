class AddCategoryToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_column :treatments, :category, :string
  end
end
