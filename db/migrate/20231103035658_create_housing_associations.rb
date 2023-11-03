class CreateHousingAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :housing_associations do |t|
      t.string :name
      t.string :street_address
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
