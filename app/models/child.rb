class Child < ActiveRecord::Base
  has_many :wallets, :dependent => :destroy
  has_many :chores, :through => :wallet
  
  validates :name, :uniqueness => true

  def to_param
    "#{id}-#{name}"
  end
  
  def add_chore(chore_id)
    current_chore = wallets.find_by_chore_id(chore_id)
    if current_chore
      current_chore.quantity += 1
    else
      current_chore = wallets.build(:chore_id => chore_id)
    end
    current_chore
  end
  
  def total_value
    wallets.to_a.sum { |chore| chore.total_value }
  end
end
