class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voteType

      t.references :reply
      t.references :user
      t.timestamps
    end
  end
end
