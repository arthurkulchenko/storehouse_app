class CreateConsumables < ActiveRecord::Migration[5.1]
  def change
    create_table :consumables do |t|
      t.string :title
      t.string :pack_form
      t.integer :amount
      t.belongs_to :possessor, polymorphic: true

      t.timestamps
    end
    add_index :consumables, [:possessor_id, :possessor_type]
  end
end
