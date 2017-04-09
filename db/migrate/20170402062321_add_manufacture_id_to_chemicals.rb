class AddManufactureIdToChemicals < ActiveRecord::Migration
  def change
    add_column :chemicals, :manufacture_id, :string
  end
end
