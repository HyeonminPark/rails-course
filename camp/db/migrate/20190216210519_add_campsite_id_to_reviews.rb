class AddCampsiteIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :campsite_id, :integer
  end
end
