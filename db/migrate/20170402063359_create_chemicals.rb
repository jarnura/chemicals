class CreateChemicals < ActiveRecord::Migration
  def change
    create_table :chemicals do |t|
      t.string :name
      t.string :chemical_name
      t.integer :cas
      t.string :description
      t.string :melting_point
      t.string :boiling_point
      t.string :molecular_weight
      t.string :hazardous_level
      t.string :safety_description
      t.string :transport_info
      t.integer :category_id
      t.integer :manufacture_id
      t.string :place
      t.string :production
      t.timestamps null: false
    end
  end
end
