class Storage::In::ChemConsum < ApplicationRecord
  include StorageContentAttributes
  validates :ph_rate, :additional_info, :purpose, :pack_form, presence: true
end
