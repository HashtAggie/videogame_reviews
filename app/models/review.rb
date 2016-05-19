class Review < ActiveRecord::Base
  belongs_to :game
  accepts_nested_attributes_for :game
  validates_presence_of :comments, :game_id
end
