class Entry < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :journal

end
