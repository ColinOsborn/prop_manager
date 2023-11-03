class AddUserToHousingAssociation < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :housing_association, null: true, foreign_key: true
  end
end
