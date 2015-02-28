class UsersController < ApplicationController
protect_from_forgery with: :exception

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

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name)
    end
end
