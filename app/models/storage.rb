class Storage < ApplicationRecord
  include StorageAttributes
  
  belongs_to :facility
  # has_many :consumables, as: :possessor, dependent: :delete_all
  
  validates :facility_id, presence: true
end
