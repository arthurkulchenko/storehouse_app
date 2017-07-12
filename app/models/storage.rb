class Storage < ApplicationRecord
  belongs_to :facility
  validates :facility_id, presence: true
end
