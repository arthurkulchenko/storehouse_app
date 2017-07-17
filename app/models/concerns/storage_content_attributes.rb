module StorageContentAttributes
  extend ActiveSupport::Concern

  included do
    belongs_to :possessor, polymorphic: true
    validates :possessor_type, presence: true
    validates :possessor_id, presence: true
  end
end