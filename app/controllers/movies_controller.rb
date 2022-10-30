class MoviesController < ApplicationController
  def index
    @movies = Movie.select_by_genre(params[:genre])
  end
end
