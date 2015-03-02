require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe 'exists?' do
    it "should exist" do
      expect(CategoriesController).to_not be_nil
    end
  end
end
