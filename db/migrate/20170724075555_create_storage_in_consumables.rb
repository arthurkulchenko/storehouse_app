class CreateStorageInConsumables < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_in_consumables do |t|
      t.string :title, null: false, default: ""
      t.string :pack_form, null: false, default: ""
      t.integer :amount, null: false, default: 0
      t.belongs_to :por, polymorphic: true, null: false, comment: 'possessor, due limitation 63 char'

      t.timestamps
    end
    add_index :storage_in_consumables, [:por_id, :por_type]
  end
end
