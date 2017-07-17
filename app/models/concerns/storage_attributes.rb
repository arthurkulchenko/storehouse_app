module StorageAttributes
  extend ActiveSupport::Concern

  included do
    %w(consumables equipment inventory chemical_consumables).each do |model|
      has_many model.to_sym, as: :possessor, dependent: :delete_all, class_name: "StorageContent::#{model.classify}"
    end
  end
end