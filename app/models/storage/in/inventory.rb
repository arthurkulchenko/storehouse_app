class Storage::In::Inventory < ApplicationRecord
  include StorageContentAttributes
  validates :kind, presence: true
end
