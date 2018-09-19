class Review < ApplicationRecord
  belongs_to :movie

  validates_presence_of :comment, :author, :movie
end
