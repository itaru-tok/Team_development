class Text < ApplicationRecord
  has_many :read_progresses, dependent: :destroy
  has_many :users, through: :read_progresses

  with_options presence: true do
    validates :genre
    validates :title
    validates :content
  end

  enum genre: {
    invisible: 0,
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }

  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze

  def self.select_by_genre(genre)
    if genre == "php"
      Text.where(genre: "php")
    else
      Text.where(genre: RAILS_GENRE_LIST)
    end
  end

  def read_progressed_by?(user)
    read_progresses.any? { |read_progress| read_progress.user_id == user.id }
  end
end
