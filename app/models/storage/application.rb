class Storage::Application < Storage
  include StorageBasic
  scope :bunch_per_month, -> (x) { where(created_at: x.month.ago..DateTime.now) }
end
