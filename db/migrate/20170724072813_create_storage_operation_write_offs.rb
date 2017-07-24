class CreateStorageOperationWriteOffs < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_operation_write_offs do |t|
      # t.string :status
      t.belongs_to :facility, foreign_key: true

      t.timestamps
    end
  end
end
