module StorageContentAttributes
  extend ActiveSupport::Concern

  included do
    belongs_to :por, polymorphic: true
    validates :title, :amount, exclusion: { in: ["Название", "Количество", "Форма упаковки"], message: "'%{value}' не подходящее значение" }, presence: true
    validates :por_type, :title, :amount, presence: true
  end
end