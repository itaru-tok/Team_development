class MoviesController < ApplicationController
  # 1ページの表示数
  PER_PAGE = 12

  def index
    @movies = Movie.where(genre: Movie::RAILS_GENRE_LIST).page(params[:page]).per(PER_PAGE)
  end
end
