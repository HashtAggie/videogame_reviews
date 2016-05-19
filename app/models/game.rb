class Game < ActiveRecord::Base
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories
  has_many :reviews
  validates_presence_of :title, :category_id, :cover_image
end
