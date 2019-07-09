class Journal < ApplicationRecord
  validates :name, presence: true
  validates :year, presence: true
  validates :author, presence: true

  has_many :entries
end
