class CreateStorages < ActiveRecord::Migration[5.1]
  def change
    create_table :storages do |t|
      t.belongs_to :facility, foreign_key: true, index: true, null: false
      t.string :status, default: "awaits", null: false
      t.string :name_class, null: false
      t.timestamps
    end
  end
end
