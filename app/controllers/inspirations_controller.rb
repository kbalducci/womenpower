class InspirationsController < ApplicationController

def index
  render json: Inspiration.all
end

end
