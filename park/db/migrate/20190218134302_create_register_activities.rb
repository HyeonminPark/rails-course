class CreateRegisterActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :register_activities do |t|
      t.integer :register_id
      t.integer :activity_id
      t.timestamps
    end
  end
end
