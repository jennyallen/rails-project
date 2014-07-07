class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      # t.integer :event_id
      # t.integer :user_id
      t.belongs_to :user
      t.belongs_to :event

      t.timestamps
    end

    # add_index :attendances, :event_id
    # add_index :attendances, :user_id
    # add_index :attendances, [:event_id, :user_id], unique: true
  end
end
