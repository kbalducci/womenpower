class Category < ActiveRecord::Base
  has_many :inspirations
  has_many :issues
  validates_uniqueness_of :name
end
