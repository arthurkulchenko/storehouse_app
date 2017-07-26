class Storage::In::Invetory < ApplicationRecord
  include StorageContentAttributes
  validates :kind, presence: true
end
