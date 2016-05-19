class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    t.integer  :game_id
    t.text     :content
      t.references :game
      t.timestamps null: false
    end
  end
end
