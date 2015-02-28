class IssuesController < ApplicationController

  def index
    render json: Issue.all
  end

  private
    def issue_params
      params.require(:issue).permit(:name)
    end
end
