class Storage::SupplyApplication < ApplicationRecord
  include StorageBasic
  validates :status, presence: true, inclusion: { in: ["awaits", "approved", "unapproved", "closed", "hidden"],
  	message: "'%{value}' не подходящее значение" }
                                 # %w(awaits, approved, unapproved, closed, hidden)
end
