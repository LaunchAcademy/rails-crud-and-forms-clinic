class Entry < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :journal
  validates :journal_id, presence: true
  # this association adds a presence validation for journal_id
end
