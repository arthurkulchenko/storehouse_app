class Facility < ApplicationRecord
  validates :name, :supervisor, :address, :manager, presence: true
  has_one :storage, dependent: :delete
end
