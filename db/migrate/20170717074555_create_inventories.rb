class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.string :title, null: false, default: ""
      t.integer :amount, null: false, default: 0
      t.string :kind, null: false, default: ""
      t.belongs_to :possessor, polymorphic: true, null: false

      t.timestamps
    end
    add_index :inventories, [:possessor_id, :possessor_type]
  end
end
