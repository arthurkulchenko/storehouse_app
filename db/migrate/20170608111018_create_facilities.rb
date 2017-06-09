class CreateFacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :supervisor
      t.string :address
      t.string :manager

      t.timestamps
    end
  end
end
