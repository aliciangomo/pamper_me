class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :location
      t.string :photo
      t.string :statement
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
