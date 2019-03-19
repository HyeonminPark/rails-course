class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :date
      t.string :picture
      t.string :comment
      t.timestamps
    end
  end
end
