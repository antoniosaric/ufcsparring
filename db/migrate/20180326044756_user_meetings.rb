class UserMeetings < ActiveRecord::Migration[5.0]
  def change
      create_table :usermeetings do |t|
      t.references :user, foreign_key: true
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
