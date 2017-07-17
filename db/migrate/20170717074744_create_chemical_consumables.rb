class CreateChemicalConsumables < ActiveRecord::Migration[5.1]
  def change
    create_table :chemical_consumables do |t|
      t.string :title
      t.string :pack_form
      t.integer :amount
      t.integer :ph_rate
      t.string :additional_info
      t.string :purpose
      t.belongs_to :possessor, polymorphic: true

      t.timestamps
    end
    add_index :chemical_consumables, [:possessor_id, :possessor_type]
  end
end
