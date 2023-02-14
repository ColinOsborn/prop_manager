class ChangeDecriptionToDescription < ActiveRecord::Migration[7.0]
  def change
    rename_column :violations, :decription, :description
  end
end
