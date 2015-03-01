class IssuesController < ApplicationController

  def index
    render json: Issue.all
    rescue StandardError => e
    render json: { message: e.message, status: 500 }.to_json, status: 500
  end

  private
    def issue_params
      params.require(:issue).permit(:name)
    end
end
