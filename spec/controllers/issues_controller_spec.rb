require 'rails_helper'

RSpec.describe IssuesController, type: :controller do
  # render_views
  # let(:json) { JSON.parse(response.body) }

  # describe "Get categories/1/issues.json" do
  #   before do
  #     get :index, format: :json
  #   end

  #   context 'all issues' do
  #     it 'returns the issues' do
  #       expect(json.collect{|i| i["name"]}).to include(@issuei.name)
  #     end
  #   end
  # end

  #   it "should render successfully" do
  #   get :index, :format => :json
  #   response.body.should be_success
  # end

#   @issue = {
#         :name  => @name,
#         :success    => true
# }.to_json

# get :action # replace with action name / params as necessary
# response.body.should == @issue

    describe 'exists?' do
    it "should exist" do
      expect(IssuesController).to_not be_nil
    end
  end
end
