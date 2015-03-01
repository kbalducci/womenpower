class CategoriesController < ApplicationController

  def index
    render json: Category.all.uniq { |cat| cat.name }
    rescue StandardError => e
      render json: { message: e.message, status: 404 }.to_json, status: 404
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
