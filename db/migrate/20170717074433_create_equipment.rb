class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :title
      t.string :owner
      t.string :kind
      t.string :additional_info
      t.integer :amount
      t.belongs_to :possessor, polymorphic: true

      t.timestamps
    end
    add_index :equipment, [:possessor_id, :possessor_type]
  end
end
