class AddStateIdToChemicals < ActiveRecord::Migration
  def change
    add_column :chemicals, :state_id, :string
  end
end
