class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.integer :order
      t.string :singer
      t.integer :status, default: 0
      t.references :event
      t.references :events_song
      t.timestamps
    end
  end
end
