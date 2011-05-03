class Wallet < ActiveRecord::Base
    belongs_to :child
    belongs_to :chore

    validates :child_id, :presence => true
    validates :chore_id, :presence => true
    
    def total_value
      chore.value * quantity
    end
end