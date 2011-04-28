class Child < ActiveRecord::Base
  has_many :completions, :dependent => :destroy
  has_many :chores, :through => :completion
  
end
