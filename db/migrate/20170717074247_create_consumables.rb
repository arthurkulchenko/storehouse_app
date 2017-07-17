class CreateConsumables < ActiveRecord::Migration[5.1]
  def change
    create_table :consumables do |t|
      t.string :title, null: false, default: ""
      t.string :pack_form, null: false, default: ""
      t.integer :amount, null: false, default: 0
      t.belongs_to :possessor, polymorphic: true, null: false

      t.timestamps
    end
    add_index :consumables, [:possessor_id, :possessor_type]
  end
end
