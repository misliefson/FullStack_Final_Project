class CreateMangas < ActiveRecord::Migration[5.1]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :author
      t.string :description
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
