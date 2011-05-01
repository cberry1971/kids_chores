class Child < ActiveRecord::Base
  has_many :wallet, :dependent => :destroy
  has_many :chores, :through => :wallet

  def to_param
    "#{id}-#{name}"
  end
end
