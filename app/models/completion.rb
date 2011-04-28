class Completion < ActiveRecord::Base
  belongs_to :child
  belongs_to :chore
end
