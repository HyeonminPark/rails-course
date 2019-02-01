class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :title
      t.string :name
      t.string :email
      t.string :date
      t.string :location
      t.string :description
      t.string :picture
      t.timestamps
    end
  end
end
