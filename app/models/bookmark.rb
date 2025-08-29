class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "It's already in the list!" }

  belongs_to :movie
  belongs_to :list
end
