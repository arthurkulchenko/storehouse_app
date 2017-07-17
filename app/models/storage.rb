class Storage < ApplicationRecord  
  belongs_to :facility
  %w(consumables equipment inventory chemical_consumables).each do |model|
    has_many model.to_sym, as: :possessor, dependent: :delete_all, class_name: "StorageContent::#{model.classify}"
  end
  
  validates :facility_id, presence: true
end
