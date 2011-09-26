class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :post_id
      t.integer :num_of_votes
      t.string :user_name

      t.timestamps
    end
  end
end
