# frozen_string_literal: true

require "rails_helper"
RSpec.describe ShortedUrl do
  describe "when valid url given" do
    let(:url) { "http://test.com/weewrewrew/1.chm" }
    subject { described_class.create(url: url) }

    it "should create" do
      is_expected.to be_valid
    end
  end

  describe "when invalid url given" do
    let(:url) { "test.com/weewrewrew/1.chm" }
    subject { described_class.create(url: url) }

    it "should raise error" do
      expect(subject.errors[:url]).to include("Valid URL required")
    end
  end
end
