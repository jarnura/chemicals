class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :ibn
      t.string :email
      t.string :company_name
      t.integer :mobile_no
      t.string :job
      t.string :company_pro
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
