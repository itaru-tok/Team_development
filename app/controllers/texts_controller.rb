class TextsController < ApplicationController
  def index
    @texts = Text.includes(:user, :read_progresses).where(genre: Text::RAILS_GENRE_LIST)
  end

  def show; end
end
