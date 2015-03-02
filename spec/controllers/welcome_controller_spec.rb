require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  # describe "GET #index" do
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe 'exists?' do
   it "should exist" do
     expect(WelcomeController).to_not be_nil
   end
 end


end
