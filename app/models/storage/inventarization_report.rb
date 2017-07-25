class Storage::InventarizationReport < ApplicationRecord
  include StorageBasic
  validates :status, presence: true, inclusion: { in: ["checked", "done", "not accepted", "hidden"],
  	message: "'%{value}' не подходящее значение" }
end
