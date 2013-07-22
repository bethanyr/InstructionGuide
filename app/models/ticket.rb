class Ticket < ActiveRecord::Base
  belongs_to :instructionguide
  attr_accessible :description, :generate, :model, :order, :rails, :step, :title, :title
end
