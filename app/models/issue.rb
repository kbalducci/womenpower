class Issue < ActiveRecord::Base
  has_many :inspirations
  belongs_to :category
end
