class GamesController < ApplicationController
  before_filter :set_game

  def index
    @games = Games.includes(:category).all

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, games: @games } }
    end
  end

  def show

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, game: @game } }
    end
  end

  def create
    @game = Game.new(game_params)
    @game.category = @category

    if @game.save
      redirect_to category_game_path(@category, @game), notice: "Game created successfully"
    else
      render :new
    end
  end

  protected

    def game_params
      params.require(:game).permit(:title, :id, :category)
    end

    def set_game
      @game = Game.find(params[:id])
    end
end
