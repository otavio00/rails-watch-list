class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list, message: "It's already in the list!" }

  belongs_to :movie
  belongs_to :list
end
