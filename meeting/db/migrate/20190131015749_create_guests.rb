class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :picture
      t.string :name
      t.string :email
      t.integer :host_id
      t.timestamps
    end
  end
end
