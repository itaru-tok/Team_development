class TextsController < ApplicationController
  def index
    @texts = Text.select_by_genre(params[:genre]).includes(:users, :read_progresses)
  end

  def show
    @text = Text.find(params[:id])
  end
end
