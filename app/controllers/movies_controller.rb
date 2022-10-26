class MoviesController < ApplicationController
  def index
    if params[:genre] == "php"
      @movies = Movie.PHP
      @genre = "PHP"
    else
      @movies = Movie.RAILS_GENRE_LIST
      @genre = "Ruby/Rails"
    end
  end
end
