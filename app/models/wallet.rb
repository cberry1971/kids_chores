class Wallet < ActiveRecord::Base
    belongs_to :child
    belongs_to :chore
end
