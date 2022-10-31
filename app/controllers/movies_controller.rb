class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:user, :watch_progresses).where(genre: Movie::RAILS_GENRE_LIST)
  end
end
