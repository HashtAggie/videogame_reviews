class Game < ActiveRecord::Base
  belongs_to :category
  accepts_nested_attributes_for :category
  has_many :reviews
  validates_presence_of :title
end
