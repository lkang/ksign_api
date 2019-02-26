class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :tab_url
      t.string :audio_url
      t.string :video_url
      t.integer :order
      t.timestamps
    end
  end
end
