class Facility < ApplicationRecord 
  has_one  :storage_house,        class_name: "Storage::House",               dependent: :delete
  has_many :storage_applications, class_name: "Storage::Application",         dependent: :delete_all
  has_many :storage_additions,    class_name: "Storage::Operation::Addition", dependent: :delete_all
  has_many :storage_write_offs,   class_name: "Storage::Operation::WriteOff", dependent: :delete_all

  validates :name, :supervisor, :address, :manager, presence: true
end
