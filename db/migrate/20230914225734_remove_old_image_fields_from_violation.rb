class RemoveOldImageFieldsFromViolation < ActiveRecord::Migration[7.0]
  def change
    remove_column :violations, :main_image
    remove_column :violations, :thumb_image
  end
end
