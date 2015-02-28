class CategoriesController < ApplicationController

  def index
    render json: Category.all
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
