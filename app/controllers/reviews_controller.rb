class ReviewsController < ApplicationController

  def index
    @game = Game.find(params[:id])
    @category = Category.find(params[:id])
    @reviews = Review.joins(game: :category).where(categories: {id: @category.id}, games: {id: @game.id})

    respond_to do |format|
      format.html
      format.json { render json: {category: @category, game: @game, reviews: @reviews} }
    end
  end

    def show
      @category = Category.find(:category_id])
      @game = Game.find(params[:id])
      @review = @game.review.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: { game: @game, review: @review} }
      end
    end

    def create
      @review = Review.new(review_params)
      @review.game = @game

      if @review.save
        redirect_to game_review_path([@game, @review]), notice: "Thanks for your review"
      else
        render :new
      end
    end

    def update
      @review = Review.find(params[:id])

      if @review.update(review_params)
        render json: { review: @review}, status: :accepted
      else
        render json: { errors: @review.errors }, status: :unprocessable_entity
      end
    end

    def destroy
      @review = Review.find(params[:id])

      if @review.destroy
        render json: { review: nil}, status: :accepted
      else
        render json: { errors: @review.errors}, status: :unprocessable_entity
      end
    end

    protected
    def review_params
      params.require(:review).permit(:game_id, :comments)
    end

    def set_game
        @game = Game.find(params[:game_id])
        @review = @game.reviews.find(params[:id])

    end
end
