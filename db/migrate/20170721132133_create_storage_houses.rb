class CreateStorageHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_houses do |t|
      t.belongs_to :facility, foreign_key: true, index: true, null: false
      t.timestamps
    end
  end
end
