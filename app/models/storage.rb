class Storage < ApplicationRecord
  %w(consumables equipment inventory chemical_consumables).each do |model|
    has_many model.to_sym, as: :possessor, dependent: :delete_all, class_name: "StorageContent::#{model.classify}"
  end
  validates :status, presence: true, inclusion: %w(awaits approved unapproved closed hidden)
end
