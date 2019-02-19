class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :campground_id
      t.string :picture
      t.string :name
      t.string :instrutor
      t.string :time
      t.integer :price
      t.string :description
      t.timestamps
    end
  end
end
