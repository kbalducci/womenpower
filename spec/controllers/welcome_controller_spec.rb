require 'rails_helper'

RSpec.describe User, type: :model do
  let(:sally) { User.new(first_name: 'Sally', last_name: 'Doe', email: 'test@me.com', password: 'password') }
end
  # let(:user) { sally }


RSpec.describe WelcomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
