# frozen_string_literal: true

class ShortenerService
  SHORTENER_BASE = 36

  def self.create(url)
    pack(ShortedUrl.find_or_create_by!(url: url))
  end

  def self.restore(url_id)
    id = url_id.to_i(SHORTENER_BASE)
    ShortedUrl.find(id).url
  end

  private

    def self.pack(shorted_url)
      shorted_url.id.to_s(SHORTENER_BASE)
    end
end
