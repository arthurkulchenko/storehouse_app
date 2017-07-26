class Storage::InventarizationReport < ApplicationRecord
  include StorageBasic
  enum status: [:added, :checked, :done, :not_accepted, :hidden], _suffix: true
  # validates :status, presence: true, inclusion: { in: ["added", "checked", "done", "not accepted", "hidden"],
  	# message: "'%{value}' не подходящее значение" }
end
