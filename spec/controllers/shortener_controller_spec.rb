require 'rails_helper'
RSpec.describe ShortenerController do
  describe "Generate short url" do
    subject { post("/links") && response }

    its(:status) { is_expected.to eq 200 }
  end

  describe "Should redirect from short to full url" do
    let(:url) { "http://teeststs.com" }
    let(:id) { ShortenerService.create(url) }

    subject { get("/links/#{id}") && response }

    it "should redirect to original url" do
      expect(subject).to redirect_to(url)
    end
  end
end
