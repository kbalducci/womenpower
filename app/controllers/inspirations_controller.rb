class InspirationsController < ApplicationController

  def index
    render json: Inspiration.all.to_json(:methods => :image)
    rescue StandardError => e
      render json: { message: e.message, status: 404 }.to_json, status: 404
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
