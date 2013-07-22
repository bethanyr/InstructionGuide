class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.integer :order
      t.references :instructionguide

      t.timestamps
    end
    add_index :steps, :instructionguide_id
  end
end
