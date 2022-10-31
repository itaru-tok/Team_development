class WatchProgressesController < ApplicationController
  def create
    current_user.watch_progresses.create!(movie_id: params[:movie_id])
    redirect_back(fallback_location: admin_movies_path)
  end

  def destroy
    current_user.watch_progresses.find_by(movie_id: params[:movie_id]).destroy!
    redirect_back(fallback_location: admin_movies_path)
  end
end
