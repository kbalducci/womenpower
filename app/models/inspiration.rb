class Inspiration < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :issue

  validates_presence_of :picture, :quote, :name

has_attached_file :picture,
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :bucket => 'kbjsinstaclone',
  :url =>':s3_domain_url',
  :path => ':class/:attachment/:id_partition/:style/:filename',
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  def image
    self.picture.url
  end
end
