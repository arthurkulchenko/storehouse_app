module StorageBasic
  extend ActiveSupport::Concern
  included do
    
    belongs_to :facility
    
    validates :facility_id, presence: true
    
    [:consumables, :chem_consums, :equipment, :inventory].each do |model|
      has_many model, as: :por, inverse_of: :por, class_name: "Storage::In::#{model.to_s.singularize.classify}", dependent: :destroy
      accepts_nested_attributes_for model, reject_if: :all_blank, allow_destroy: true
    end

    def childrens
      @childrens = self.class.reflect_on_all_associations(:has_many).map(&:name)
    end

  end
end