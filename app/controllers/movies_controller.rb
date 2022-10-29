class MoviesController < ApplicationController
  def index
    # binding.pry
    @movies = Movie.select_by_genre(params[:genre])
  end
end
