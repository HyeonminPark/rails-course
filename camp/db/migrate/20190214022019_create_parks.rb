class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.string :state
      t.string :country
      t.timestamps
    end
  end
end
