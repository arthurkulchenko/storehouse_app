class CreateFacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :facilities do |t|
      t.string :title,      null: false, default: ""
      t.string :supervisor, null: false, default: ""
      t.string :address,    null: false, default: ""
      t.string :manager,    null: false, default: ""

      t.timestamps
    end
  end
end
