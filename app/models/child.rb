class Child < ActiveRecord::Base
  has_many :completion, :dependent => :destroy
  has_many :chores, :through => :completion

  def to_param
    "#{id}-#{name}"
  end
end
