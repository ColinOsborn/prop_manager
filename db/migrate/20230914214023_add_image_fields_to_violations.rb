class AddImageFieldsToViolations < ActiveRecord::Migration[7.0]
  def change
    add_column :violations, :main_image, :string
    add_column :violations, :thumb_image, :string
  end
end
