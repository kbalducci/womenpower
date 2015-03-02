require 'rails_helper'

RSpec.describe IssuesController, type: :controller do

  describe 'exists?' do
    it "should exist" do
      expect(IssuesController).to_not be_nil
    end
  end
end
