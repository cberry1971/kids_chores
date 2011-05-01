class Chore < ActiveRecord::Base
  has_many :wallet
  has_many :kids, :through => :wallet
  
  default_scope :order => 'title'
  
  validates :title, :description, :image_url, :presence => true
  validates :value, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }
end
