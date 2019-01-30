class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
    end
  end
end
