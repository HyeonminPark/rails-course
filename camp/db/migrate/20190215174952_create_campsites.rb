class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|
      t.integer :park_id
      t.string :name
      t.string :location
      t.string :picture
      t.string :description
      t.string :review
      t.timestamps
    end
  end
end
