class Category < ActiveRecord::Base
  has_many :games
  accepts_nested_attributes_for :games
  validates_presence_of :name
end
