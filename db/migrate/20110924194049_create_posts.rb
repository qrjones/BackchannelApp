class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.text :post_text

      t.timestamps
    end
  end
end
