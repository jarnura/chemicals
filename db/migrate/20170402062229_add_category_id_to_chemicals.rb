class AddCategoryIdToChemicals < ActiveRecord::Migration
  def change
    add_column :chemicals, :category_id, :string
  end
end
