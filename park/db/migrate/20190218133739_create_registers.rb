class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip
      t.string :picture
      t.timestamps
    end
  end
end
