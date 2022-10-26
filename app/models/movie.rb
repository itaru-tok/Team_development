class Movie < ApplicationRecord
  with_options presence: true do
    validates :genre
    validates :title
    validates :url
  end

  enum genre: {
    invisible: 0,
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }

  def self.PHP
    where(genre: ["php"])
  end

  def self.RAILS_GENRE_LIST
    where(genre: ["basic", "git", "ruby", "rails"])
  end
end
