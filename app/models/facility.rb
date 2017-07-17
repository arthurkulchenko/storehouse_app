class Facility < ApplicationRecord
  validates :name, :supervisor, :address, :manager, presence: true
  has_many :storages, dependent: :delete_all
end
