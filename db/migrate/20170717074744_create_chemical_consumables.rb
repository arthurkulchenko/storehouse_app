class CreateChemicalConsumables < ActiveRecord::Migration[5.1]
  def change
    create_table :chemical_consumables do |t|
      t.string :title, null: false, default: ""
      t.string :pack_form, null: false, default: ""
      t.integer :amount, null: false, default: 0
      t.integer :ph_rate, null: false, default: 0
      t.string :additional_info, default: ""
      t.string :purpose, null: false, default: ""
      t.belongs_to :possessor, polymorphic: true, null: false

      t.timestamps
    end
    add_index :chemical_consumables, [:possessor_id, :possessor_type]
  end
end
