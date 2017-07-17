module StorageBasic
  extend ActiveSupport::Concern
  included do
    belongs_to :facility
    validates :facility_id, presence: true
  end
end