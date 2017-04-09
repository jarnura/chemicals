class CreateRegisterchemicals < ActiveRecord::Migration
  def change
    create_table :registerchemicals do |t|
      t.string :marketing_name
      t.integer :cas
      t.string :chemical_name
      t.string :other_name
      t.string :molecular_formula
      t.string :structural_formula
      t.integer :molecular_weight
      t.string :number_amw
      t.integer :weight_amw
      t.string :percentage_less_full
      t.string :percentage_less_half
      t.string :degree_of_purity
      t.string :hazardous_imp
      t.string :non_hazardous_imp
      t.integer :year
      t.integer :tonne
      t.integer :manufacture_id
      t.integer :chemical_id

      t.timestamps null: false
    end
  end
end
