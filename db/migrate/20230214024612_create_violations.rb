class CreateViolations < ActiveRecord::Migration[7.0]
  def change
    create_table :violations do |t|
      t.string :title
      t.text :decription
      t.string :photo

      t.timestamps
    end
  end
end
