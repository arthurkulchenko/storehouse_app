module StorageBasic
  extend ActiveSupport::Concern
  included do
    belongs_to :facility
    validates :facility_id, presence: true
    [:consumables, :chem_consums, :equipment, :inventory].each do |model|
      has_many model, as: :por, dependent: :destroy
      accepts_nested_attributes_for model, reject_if: :all_blank
    end
  end
end