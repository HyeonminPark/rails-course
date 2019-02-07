class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :picture
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
