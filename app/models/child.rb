class Child < ActiveRecord::Base
  has_many :wallet, :dependent => :destroy
  has_many :chores, :through => :wallet
  
  validates :name, :uniqueness => true

  def to_param
    "#{id}-#{name}"
  end
end
