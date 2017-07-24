module StorageContentAttributes
  extend ActiveSupport::Concern

  included do
    belongs_to :por, polymorphic: true
    validates :por_type, :por_id, :title, :amount, presence: true
  end
end