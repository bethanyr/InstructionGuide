class CreateInstructionguides < ActiveRecord::Migration
  def change
    create_table :instructionguides do |t|
      t.string :name
      t.string :description
      t.string :owner

      t.timestamps
    end
  end
end
