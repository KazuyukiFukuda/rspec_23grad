class Book < ApplicationRecord
  validates :title, :author, :published_at, presence: true
end
