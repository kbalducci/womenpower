require 'rails_helper'

RSpec.describe InspirationsController, type: :controller do

  describe 'exists?' do
    it "should exist" do
      expect(InspirationsController).to_not be_nil
    end
  end
end
