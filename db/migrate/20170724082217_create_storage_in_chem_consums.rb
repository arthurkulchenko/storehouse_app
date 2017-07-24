class CreateStorageInChemConsums < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_in_chem_consums do |t|
      t.string :title, null: false
      t.integer :amount, null: false, default: 0
      t.string :pack_form, null: false
      t.belongs_to :por, polymorphic: true
      t.float :ph_rate, null: false
      t.string :purpose, null: false
      t.text :additional_info

      t.timestamps
    end
    add_index :storage_in_chem_consums, [:por_id, :por_type]
  end
end
