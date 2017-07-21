class CreateStorageSupplyApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_supply_applications do |t|
      t.string :status, default: 'awaits', null: false
      t.belongs_to :facility, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
