class CreateUsersMeetups < ActiveRecord::Migration
  def change
    create_table :usersmeetups do |t|
      t.integer :user_id, null: false
      t.integer :meetup_id, null: false
      t.index [:user_id, :meetup_id], unique: true

      t.timestamps
    end
  end
end
