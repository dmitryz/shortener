# frozen_string_literal: true

class ShortenerService
  SHORTENER_BASE = 36

  def self.create(url)
    pack(ShortedUrl.first_or_create!(url: url))
  end

  def self.restore(id)
    ShortedUrl.find(id).url
  end

  private

    def self.pack(shorted_url)
      shorted_url.id.to_s(SHORTENER_BASE)
    end
end
