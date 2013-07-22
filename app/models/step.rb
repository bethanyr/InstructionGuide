class Step < ActiveRecord::Base
  belongs_to :instructionguide
  attr_accessible :order, :title
end
