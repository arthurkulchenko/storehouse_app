class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.string :title
      t.integer :amount
      t.string :kind
      t.belongs_to :possessor, polymorphic: true

      t.timestamps
    end
    add_index :inventories, [:possessor_id, :possessor_type]
  end
end
