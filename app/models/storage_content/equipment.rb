class StorageContent::Equipment < ApplicationRecord
  belongs_to :possessor, polymorphic: true
  validates :possessor_type, presence: true
end
