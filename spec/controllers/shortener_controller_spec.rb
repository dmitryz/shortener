# frozen_string_literal: true

require "rails_helper"
RSpec.describe ShortenerController do
  it "Should create short url" do
    post(:create, params: { url: "http://test.co" })
    expect(response.status).to eq 200
  end

  describe "Should redirect from short to full url" do
    let(:url) { "http://teeststs.com" }
    let(:id) { ShortenerService.create(url) }


    it "should redirect to original url" do
      get :show, params: { id: id }
      expect(response).to redirect_to(url)
    end
  end
end
