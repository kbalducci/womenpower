class IssuesController < ApplicationController

  def index
    render json: Issue.all
    rescue StandardError => e
    render json: { message: e.message, status: 404 }.to_json, status: 404
  end

  private
    def issue_params
      params.require(:issue).permit(:name)
    end
end
