class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:users, :watch_progresses).where(genre: Movie::RAILS_GENRE_LIST)
  end
end
