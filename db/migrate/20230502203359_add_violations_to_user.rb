class AddViolationsToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :violations, :user, foreign_key: true
  end
end
