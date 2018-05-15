class CreateShortedUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :shorted_urls do |t|
      t.string :url

      t.timestamps
    end
    add_index :shorted_urls, :url, unique: true
  end
end
