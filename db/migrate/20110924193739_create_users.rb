class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_password
      t.integer :role

      t.timestamps
    end
  end
end
