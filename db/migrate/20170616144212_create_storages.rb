class CreateStorages < ActiveRecord::Migration[5.1]
  def change
    create_table :storages do |t|
      t.belongs_to :facility, foreign_key: true, index: true
      t.timestamps
    end
  end
end
