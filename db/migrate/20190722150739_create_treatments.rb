class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.string :name
      t.text :description
      t.references :provider, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
