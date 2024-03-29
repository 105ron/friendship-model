class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
     t.integer :user_id
     t.integer :friend_id
     t.boolean :confirmed, { default: false }
     t.boolean :pending, { default: true }
     t.timestamps
    end
    add_index :friendships, :user_id
    add_index :friendships, :friend_id
    add_index :friendships, [:user_id, :friend_id], unique: true
    add_index :friendships, [:user_id, :friend_id, :confirmed]
    add_index :friendships, [:user_id, :friend_id, :pending]
  end
end
