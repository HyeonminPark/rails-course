class RemoveReviewToCampsites < ActiveRecord::Migration[5.2]
  def change
    remove_column :campsites, :review, :string
  end
end
