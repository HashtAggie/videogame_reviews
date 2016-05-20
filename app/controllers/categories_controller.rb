class CategoriesController < ApplicationController
    def index
      @categories = Category.all

      respond_to do |f|
        f.html
        f.json { render json: { categories: @categories } }
      end
  end

    def show
      @category = Category.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: { category: @category, game: @games } }
      end
    end

  def create
    @category = Category.new(category_params)

    if @category.save
      render json: { category: @category, location: category_url(@category) }, status: :created
    else
      render json: { errors: @category.errors }, status: :unprocessable_entity
    end
  end

  def update
  @category = Category.find(params[:id])
  if @category.update(category_params)
    render json: { category: @category }, status: :accepted
  else
    render json: { errors: @category.errors }, status: :unprocessable_entity
  end
end

def destroy
  @category = Category.find(params[:id])
  if @category.destroy
    render json: { category: nil}, status: :accepted
  else
    render json: { errors: @category.errors}, status: :unprocessable_entity
  end
end

  protected

    def category_params
      params.require(:category).permit(:name)
    end

end
