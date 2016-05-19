class GamesController < ApplicationController
  before_filter :set_category

  def index
    @categories = Category.find(params[:id])
    @games = @category.games.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, games: @games } }
    end
  end

  def show
    @category = Category.find(params[:id])
    @game = @category.games.find(params[:id])

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

  def set_category
    @category = Category.find(params[:category_id])
    @game = @category.games.find(params[:id])
  end
end
