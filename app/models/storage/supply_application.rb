class Storage::SupplyApplication < ApplicationRecord
  include StorageBasic
  enum status: [:awaits, :approved, :unapproved, :closed, :hidden], _suffix: true
  # validates :status, presence: true, inclusion: { in: ["awaits", "approved", "unapproved", "closed", "hidden"], 
  	# message: "'%{value}' не подходящее значение" }
  scope :bunch_per_month, -> (x) { where(created_at: x.month.ago..Time.now) }
end
