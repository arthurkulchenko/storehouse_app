class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :title, null: false, default: ""
      t.string :owner, null: false, default: ""
      t.string :kind, null: false, default: ""
      t.string :additional_info, default: ""
      t.integer :amount, null: false, default: 0
      t.belongs_to :possessor, polymorphic: true, null: false

      t.timestamps
    end
    add_index :equipment, [:possessor_id, :possessor_type]
  end
end
