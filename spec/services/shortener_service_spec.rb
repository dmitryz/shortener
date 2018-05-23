# frozen_string_literal: true

require "rails_helper"
RSpec.describe ShortenerService do
  let(:url) { "http://test.com" }
  let(:service) { described_class }

  before do
    10.times do |n|
      ShortedUrl.create(url: "http://test#{n}.com")
    end
  end

  describe "when create is called" do
    subject { service.create(url) }

    it "should generate short url id" do
      is_expected.to be_a_kind_of(String)
    end

    it "should generate the same id on second request" do
      is_expected.to eq(service.create(url))
    end
  end

  describe "when url is shortened" do
    let(:url_id) { service.create(url) }
    subject { service.restore(url_id) }

    it "should able to restore" do
      is_expected.to eq(url)
    end
  end
end
