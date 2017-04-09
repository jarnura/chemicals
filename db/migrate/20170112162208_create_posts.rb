class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :brief_description
      t.integer :category_id
      t.text :properties
      t.string :chemical_name
      t.integer :manufacture_id
      t.timestamps null: false
    end
  end
end
