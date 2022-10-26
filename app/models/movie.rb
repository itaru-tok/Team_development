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

  def self.php
    where(genre: ["php"])
  end

  def self.rails_genre_list
    where(genre: ["basic", "git", "ruby", "rails"])
  end
end
