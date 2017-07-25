class CreateStorageInventarizationReports < ActiveRecord::Migration[5.1]
  def change
    create_table :storage_inventarization_reports do |t|
      t.belongs_to :facility, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
