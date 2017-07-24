class Storage::In::Equipment < ApplicationRecord
  include StorageContentAttributes
  validates :owner, :kind, presence: true
end
