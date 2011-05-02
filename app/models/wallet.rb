class Wallet < ActiveRecord::Base
    belongs_to :child
    belongs_to :chore

    
    def total_value
      chore.value * quantity
    end
end