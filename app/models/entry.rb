class Entry < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :journal
  # this association adds a presence validation for journal_id
end
