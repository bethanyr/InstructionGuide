class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.string :rails
      t.string :generate
      t.string :model
      t.string :step
      t.string :title
      t.integer :order
      t.references :instructionguide

      t.timestamps
    end
    add_index :tickets, :instructionguide_id
  end
end
