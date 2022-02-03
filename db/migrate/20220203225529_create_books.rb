class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.decimal :price
      t.string :date_published

      t.timestamps
    end
  end
end
