class RenamePhotoFieldOnViolations < ActiveRecord::Migration[7.0]
  def change
    rename_column :violations, :photo, :image
  end
end
