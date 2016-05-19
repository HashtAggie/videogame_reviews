class AddGameIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :game_id, :integer
    add_column :reviews, :comments, :text
  end
end
