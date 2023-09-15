class RenamePhotoToImageOnViolationsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :violations, :image, :text
    remove_column :violations, :photo
  end
end
