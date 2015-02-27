class Category < ActiveRecord::Base
  has_many :inspirations
  has_many :issues

end
