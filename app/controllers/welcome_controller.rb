class WelcomeController < ApplicationController
  def index
  end

  def create
  @user = User.new(user_params)

  respond_to do |format|
    if @user.save
        format.json { render json: @user, status: :created, location: @user }
    else
        format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end
end
