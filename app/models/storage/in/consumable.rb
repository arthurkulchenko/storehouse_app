class Storage::In::Consumable < ApplicationRecord
  include StorageContentAttributes
  validates :pack_form, presence: true
end
