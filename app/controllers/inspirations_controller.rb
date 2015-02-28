class InspirationsController < ApplicationController

  def index
    # @inspiration = Inspiration.first
    # render json: Inspiration.all
    render json: Inspiration.all.to_json(:methods => :image)
    # render json: Inspiration.all.to_json

  end

  def create
  @inspiration = Inspiration.new(user_params)

    respond_to do |format|
      if @inspiration.save
          format.json { render json: @inspiration, status: :created, location: @inspiration }
      else
          format.json { render json: @inspiration.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def inspiration_params
      params.require(:inspiration).permit(:name, :picture, :quote)
    end
end
