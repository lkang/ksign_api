class CreateEventsSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :events_songs do |t|
      t.references :event
      t.references :song
      t.integer :order
      t.timestamps
    end
  end
end
