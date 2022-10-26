class MoviesController < ApplicationController
  def index
    if params[:genre] == "php"
      @movies = Movie.php
      @genre = "PHP"
    else
      @movies = Movie.rails_genre_list
      @genre = "Ruby/Rails"
    end
  end
end
