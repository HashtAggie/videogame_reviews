class Game < ActiveRecord::Base
  has_and_belongs_to_many :category
  accepts_nested_attributes_for :category
  has_many :reviews
  validates_presence_of :title
end
