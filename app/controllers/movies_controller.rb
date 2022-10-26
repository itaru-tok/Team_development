class MoviesController < ApplicationController
  def index
    if params[:genre] == "php"
      @movies = Movie.PHP
      @title = "PHP 動画"
    else
      @movies = Movie.RAILS_GENRE_LIST
      @title = "Ruby/Rails 動画"
    end
  end
end
