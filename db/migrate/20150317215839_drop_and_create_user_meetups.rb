class DropAndCreateUserMeetups < ActiveRecord::Migration
  def change
    drop_table :usersmeetups

    create_table :user_meetups do |t|
      t.integer :user_id, null: false
      t.integer :meetup_id, null: false
      t.index [:user_id, :meetup_id], unique: true

      t.timestamps
    end
  end
end
