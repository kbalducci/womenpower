require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  render_views
  let(:json) { JSON.parse(response.body) }

  describe "Get /categories.json" do
    before do
      get :index, format: :json
    end

    context 'all categories' do
      it 'returns the categories' do
        expect(json.collect{|i| i["name"]}).to include(@categoryi.name)
      end
    end
  end
  describe 'exists?' do
    it "should exist" do
      expect(CategoriesController).to_not be_nil
    end
  end
end
