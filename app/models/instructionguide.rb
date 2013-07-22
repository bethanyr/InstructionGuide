class Instructionguide < ActiveRecord::Base
  attr_accessible :description, :name, :owner
  has_many :steps
end
