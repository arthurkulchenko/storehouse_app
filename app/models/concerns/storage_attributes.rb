module StorageAttributes
  extend ActiveSupport::Consern

  included do
    [:consumables, :equipment, :inventory, :chemical_consumables].each do |model|
      has_many model, dependent: :delete
    end
  end

end