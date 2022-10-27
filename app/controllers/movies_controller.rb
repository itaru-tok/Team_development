class MoviesController < ApplicationController
  def index
    @movies = Movie.genre
  end
end
