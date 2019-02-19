class CreateCampgrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :campgrounds do |t|
      t.string :picture
      t.string :name
      t.string :country
      t.string :state
      t.string :city
      t.string :address
      t.integer :zip
      t.string :description
      t.timestamps
    end
  end
end
