class CategoriesController < ApplicationController

  def index
    render json: Category.all.ary.uniq { |cat| cat.name }
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
