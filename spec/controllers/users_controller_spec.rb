require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'exists?' do
   it "should exist" do
     expect(UsersController).to_not be_nil
   end
  end
end

