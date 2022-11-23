class MoviesController < ApplicationController
  # 1ページの表示数
  PER_PAGE = 12

  def index
    @movies = Movie.select_by_genre(params[:genre]).page(params[:page]).per(PER_PAGE).includes(:users, :watch_progresses)
    # binding.pry
    @movies.page
  end
end
