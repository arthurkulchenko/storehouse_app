class Facility < ApplicationRecord
  validates :name, :supervisor, :address, :manager, presence: true
end
