class CreateStorageInEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_in_equipment do |t|
      t.string :title, null: false, default: ""
      t.string :owner, null: false, default: ""
      t.string :kind, null: false, default: ""
      t.string :additional_info, default: ""
      t.integer :amount, null: false, default: 0
      t.belongs_to :por, polymorphic: true, null: false

      t.timestamps
    end
    add_index :storage_in_equipment, [:por_id, :por_type]
  end
end
