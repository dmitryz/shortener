class ShortedUrl < ApplicationRecord
  validates :url, presence: true, uniqueness: true
  validates :url, :format => { :with => URI::regexp(%w(http https)), :message => "Valid URL required"}
end
