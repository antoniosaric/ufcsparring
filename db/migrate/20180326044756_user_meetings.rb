class UserMeetings < ActiveRecord::Migration[5.0]
  def change
      create_table :usermeetings do |t|
      t.references :user, foreign_key: true
      t.references :meeting, foreign_key: true

      t.timestamps
    end

    add_index :usermeetings, :user_id
    add_index :usermeetings, :meeting_id
    add_index :usermeetings, [:meeting_id, :user_id], unique: true
  end
end
