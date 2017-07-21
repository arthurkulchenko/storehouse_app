class CreateStorageOperationAdditions < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_operation_additions do |t|
      t.belongs_to :facility, foreign_key: true

      t.timestamps
    end
  end
end
