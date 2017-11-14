class AddCategoryRefToManga < ActiveRecord::Migration[5.1]
  def change
    add_reference :mangas, :category, foreign_key: true
  end
end
