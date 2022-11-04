class MoviesController < ApplicationController
  # 1ページの表示数
  PER_PAGE = 12

  def index
    @movies = Movie.includes(:users, :watch_progresses).where(genre: Movie::RAILS_GENRE_LIST)
    @movies = Movie.select_by_genre(params[:genre]).page(params[:page]).per(PER_PAGE)
  end
end
