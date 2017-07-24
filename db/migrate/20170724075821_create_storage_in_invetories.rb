class CreateStorageInInvetories < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_in_invetories do |t|
      t.string :title, null: false, default: ""
      t.integer :amount, null: false, default: 0
      t.string :kind, null: false, default: ""
      t.belongs_to :por, polymorphic: true, null: false

      t.timestamps
    end
    add_index :storage_in_invetories, [:por_id, :por_type]
  end
end
